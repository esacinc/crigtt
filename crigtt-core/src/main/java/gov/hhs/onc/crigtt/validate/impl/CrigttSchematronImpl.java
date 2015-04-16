package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.Assert;
import gov.hhs.onc.crigtt.api.schematron.Extends;
import gov.hhs.onc.crigtt.api.schematron.Pattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedAssert;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import gov.hhs.onc.crigtt.api.schematron.Rule;
import gov.hhs.onc.crigtt.api.schematron.Schema;
import gov.hhs.onc.crigtt.api.schematron.SchematronLevel;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedAssertImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedPatternImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedRuleImpl;
import gov.hhs.onc.crigtt.validate.CrigttSchematron;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import javax.annotation.Resource;
import javax.xml.transform.Source;
import net.sf.saxon.om.DocumentInfo;
import net.sf.saxon.om.DocumentPool;
import net.sf.saxon.om.DocumentURI;
import net.sf.saxon.s9api.DocumentBuilder;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmDestination;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XsltCompiler;
import net.sf.saxon.s9api.XsltExecutable;
import net.sf.saxon.s9api.XsltTransformer;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.StringUtils;

public class CrigttSchematronImpl implements CrigttSchematron {
    @Resource(name = "docBuilderCrigtt")
    private DocumentBuilder docBuilder;

    @Resource(name = "xsltCompilerCrigtt")
    private XsltCompiler xsltCompiler;

    @Resource(name = "jaxbMarshallerSchematron")
    private CrigttJaxbMarshaller schematronJaxbMarshaller;

    private String desc;
    private String displayName;
    private String name;
    private Map<String, ?> params;
    private Map<String, Source> referencedDocs = new HashMap<>();
    private Source src;
    private Map<DocumentURI, DocumentInfo> pooledReferencedDocs;
    private Map<String, ResolvedPattern> resolvedPatterns;
    private XsltExecutable[] xsltExecs;
    private XsltExecutable xsltExec;

    @Override
    public XdmNode transform(Source docSrc) throws SaxonApiException {
        XsltTransformer docTransformer = this.xsltExec.load();
        docTransformer.setSource(docSrc);

        DocumentPool docPool = docTransformer.getUnderlyingController().getDocumentPool();

        this.pooledReferencedDocs.forEach((pooledReferencedDocUri, pooledReferencedDocInfo) -> docPool.add(pooledReferencedDocInfo, pooledReferencedDocUri));

        XdmDestination docDest = new XdmDestination();
        docTransformer.setDestination(docDest);

        docTransformer.transform();

        return docDest.getXdmNode();
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        this.pooledReferencedDocs = new HashMap<>(this.referencedDocs.size());

        for (String referencedDocUri : this.referencedDocs.keySet()) {
            this.pooledReferencedDocs.put(new DocumentURI(referencedDocUri), ((DocumentInfo) this.docBuilder.build(this.referencedDocs.get(referencedDocUri))
                .getUnderlyingNode()));
        }

        XsltTransformer[] transformers = Stream.of(this.xsltExecs).map(XsltExecutable::load).toArray(XsltTransformer[]::new);
        transformers[0].setSource(this.src);

        IntStream.range(0, (transformers.length - 1)).forEach(
            transformerIndex -> transformers[transformerIndex].setDestination(transformers[(transformerIndex + 1)]));

        XdmDestination schemaDest = new XdmDestination();
        transformers[(transformers.length - 1)].setDestination(schemaDest);

        Optional.ofNullable(this.params).ifPresent(
            params -> params.forEach((paramName, paramValue) -> transformers[2].setParameter(new QName(paramName), (ClassUtils.isAssignable(
                paramValue.getClass(), Boolean.class) ? new XdmAtomicValue(((Boolean) paramValue)) : new XdmAtomicValue(paramValue.toString())))));

        transformers[0].transform();

        DocumentInfo schemaDocInfo = ((DocumentInfo) schemaDest.getXdmNode().getUnderlyingNode());

        this.xsltExec = this.xsltCompiler.compile(schemaDocInfo);

        Schema schema = this.schematronJaxbMarshaller.unmarshal(this.src, Schema.class);

        this.resolvedPatterns = this.resolvePatterns(schema);
    }

    private Map<String, ResolvedPattern> resolvePatterns(Schema schema) throws SaxonApiException {
        final Map<String, SchematronLevel> phaseLevels =
            EnumSet.allOf(SchematronLevel.class).stream().collect(Collectors.toMap(SchematronLevel::getPhaseId, Function.<SchematronLevel> identity())), activePatterns =
            new LinkedHashMap<>();
        final Map<String, Pattern> patterns = new LinkedHashMap<>();
        final Map<String, Rule> rules = new LinkedHashMap<>();
        final Map<String, Assert> asserts = new LinkedHashMap<>();

        schema.getPhase().forEach(phase -> {
            final SchematronLevel phaseLevel = phaseLevels.get(phase.getId());

            phase.getActive().forEach(active -> activePatterns.put(((Pattern) active.getPattern()).getId(), phaseLevel));
        });

        schema.getPattern().forEach(pattern -> {
            patterns.put(pattern.getId(), pattern);

            pattern.getRule().forEach(rule -> {
                rules.put(rule.getId(), rule);

                rule.getAssert().forEach(azzert -> asserts.put(azzert.getId(), azzert));
            });
        });

        Map<String, ResolvedPattern> resolvedPatterns = new LinkedHashMap<>(patterns.size());
        ResolvedPattern resolvedPattern;
        Pattern pattern;
        Map<String, ResolvedRule> resolvedRules;
        ResolvedRule resolvedRule;
        String ruleId;

        for (String patternId : patterns.keySet()) {
            if (StringUtils.isEmpty(patternId) || ((pattern = patterns.get(patternId)).isSetAbstract() && pattern.isAbstract())
                || !activePatterns.containsKey(patternId)) {
                continue;
            }

            resolvedPatterns.put(patternId, (resolvedPattern = new ResolvedPatternImpl(patternId)));
            resolvedPattern.setLevel(activePatterns.get(patternId));
            resolvedPattern.setRules((resolvedRules = new LinkedHashMap<>()));

            for (Rule rule : pattern.getRule()) {
                if (StringUtils.isEmpty((ruleId = rule.getId())) || (rule.isSetAbstract() && rule.isAbstract())) {
                    continue;
                }

                resolvedRules.put(ruleId, (resolvedRule = new ResolvedRuleImpl(ruleId)));
                resolvedRule.setContext(rule.getContext());
                resolvedRule.setAsserts(this.resolveAsserts(new LinkedHashMap<>(), rule));
            }
        }

        return resolvedPatterns;
    }

    private Map<String, ResolvedAssert> resolveAsserts(Map<String, ResolvedAssert> resolvedAsserts, Rule rule) throws SaxonApiException {
        for (Extends extendz : rule.getExtends()) {
            this.resolveAsserts(resolvedAsserts, ((Rule) extendz.getRule()));
        }

        ResolvedAssert resolvedAssert;
        String assertId;

        for (Assert azzert : rule.getAssert()) {
            if (StringUtils.isEmpty((assertId = azzert.getId()))) {
                continue;
            }

            resolvedAsserts.put(assertId, (resolvedAssert = new ResolvedAssertImpl(assertId)));
            resolvedAssert.setTest(azzert.getTest());
            resolvedAssert.setText(azzert.getMixedContent().stream().toArray(String[]::new));
        }

        return resolvedAsserts;
    }

    @Override
    public String getDescription() {
        return this.desc;
    }

    @Override
    public void setDescription(String desc) {
        this.desc = desc;
    }

    @Override
    public String getDisplayName() {
        return this.displayName;
    }

    @Override
    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public Map<String, ?> getParameters() {
        return this.params;
    }

    @Override
    public void setParameters(Map<String, ?> params) {
        this.params = params;
    }

    @Override
    public Map<String, Source> getReferencedDocuments() {
        return this.referencedDocs;
    }

    @Override
    public void setReferencedDocuments(Map<String, Source> referencedDocs) {
        this.referencedDocs.clear();
        this.referencedDocs.putAll(referencedDocs);
    }

    @Override
    public Map<String, ResolvedPattern> getResolvedPatterns() {
        return this.resolvedPatterns;
    }

    @Override
    public Source getSource() {
        return this.src;
    }

    @Override
    public void setSource(Source src) {
        this.src = src;
    }

    @Override
    public XsltExecutable[] getXsltExecutables() {
        return this.xsltExecs;
    }

    @Override
    public void setXsltExecutables(XsltExecutable ... xsltExecs) {
        this.xsltExecs = xsltExecs;
    }
}
