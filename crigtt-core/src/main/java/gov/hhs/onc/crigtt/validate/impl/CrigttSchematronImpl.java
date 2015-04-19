package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.Assert;
import gov.hhs.onc.crigtt.api.schematron.Extends;
import gov.hhs.onc.crigtt.api.schematron.Pattern;
import gov.hhs.onc.crigtt.api.schematron.Phase;
import gov.hhs.onc.crigtt.api.schematron.Report;
import gov.hhs.onc.crigtt.api.schematron.ResolvedAssert;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPhase;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import gov.hhs.onc.crigtt.api.schematron.Rule;
import gov.hhs.onc.crigtt.api.schematron.Schema;
import gov.hhs.onc.crigtt.api.schematron.impl.ReportImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedAssertImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedPatternImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedPhaseImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedRuleImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.RuleImpl;
import gov.hhs.onc.crigtt.io.impl.ByteArrayResult;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.transform.impl.CrigttDocumentBuilder;
import gov.hhs.onc.crigtt.validate.CrigttSchematron;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import javax.annotation.Resource;
import javax.xml.transform.Source;
import net.sf.saxon.om.DocumentInfo;
import net.sf.saxon.om.DocumentPool;
import net.sf.saxon.om.DocumentURI;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmDestination;
import net.sf.saxon.s9api.XsltCompiler;
import net.sf.saxon.s9api.XsltExecutable;
import net.sf.saxon.s9api.XsltTransformer;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CrigttSchematronImpl implements CrigttSchematron {
    private final static Logger LOGGER = LoggerFactory.getLogger(CrigttSchematronImpl.class);

    @Resource(name = "docBuilderBase")
    private CrigttDocumentBuilder docBuilder;

    @Resource(name = "xsltCompilerCrigtt")
    private XsltCompiler xsltCompiler;

    @Resource(name = "jaxbMarshallerSchematron")
    private CrigttJaxbMarshaller schematronJaxbMarshaller;

    private String desc;
    private String displayId;
    private String id;
    private Map<String, ?> params;
    private Map<String, Source> referencedDocs = new HashMap<>();
    private Source src;
    private Map<DocumentURI, DocumentInfo> pooledReferencedDocs;
    private Map<String, ResolvedPhase> resolvedPhases;
    private XsltExecutable[] xsltExecs;
    private XsltExecutable xsltExec;

    @Override
    public XdmDocument transform(Source docSrc) throws SaxonApiException {
        XsltTransformer docTransformer = this.xsltExec.load();
        docTransformer.setSource(docSrc);

        DocumentPool docPool = docTransformer.getUnderlyingController().getDocumentPool();

        this.pooledReferencedDocs.forEach((pooledReferencedDocUri, pooledReferencedDocInfo) -> docPool.add(pooledReferencedDocInfo, pooledReferencedDocUri));

        XdmDestination docDest = new XdmDestination();
        docTransformer.setDestination(docDest);

        docTransformer.transform();

        return new XdmDocument(((DocumentInfo) docDest.getXdmNode().getUnderlyingNode()));
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        String sysId = this.src.getSystemId();

        this.pooledReferencedDocs = new HashMap<>(this.referencedDocs.size());

        Source referencedDocSrc;

        for (String referencedDocUri : this.referencedDocs.keySet()) {
            this.pooledReferencedDocs.put(new DocumentURI(referencedDocUri),
                this.docBuilder.build((referencedDocSrc = this.referencedDocs.get(referencedDocUri))).getUnderlyingNode());

            LOGGER.debug(String.format("Built Schematron schema (sysId=%s) referenced document (uri=%s, sysId=%s).", sysId, referencedDocUri,
                referencedDocSrc.getSystemId()));
        }

        Schema schema = this.schematronJaxbMarshaller.unmarshal(this.src, Schema.class);

        this.resolvedPhases = this.resolvePhases(schema);

        ByteArrayResult resolvedResult = new ByteArrayResult(sysId);

        this.schematronJaxbMarshaller.marshal(schema, resolvedResult);

        XsltTransformer[] transformers = Stream.of(this.xsltExecs).map(XsltExecutable::load).toArray(XsltTransformer[]::new);
        transformers[0].setSource(new ByteArraySource(resolvedResult.getBytes(), sysId));

        IntStream.range(0, (transformers.length - 1)).forEach(
            transformerIndex -> transformers[transformerIndex].setDestination(transformers[(transformerIndex + 1)]));

        XdmDestination schemaDest = new XdmDestination();
        transformers[(transformers.length - 1)].setDestination(schemaDest);

        Optional.ofNullable(this.params)
            .ifPresent(
                params -> params.forEach((paramName, paramValue) -> transformers[(transformers.length - 1)].setParameter(new QName(paramName), (ClassUtils
                    .isAssignable(paramValue.getClass(), Boolean.class)
                    ? new XdmAtomicValue(((Boolean) paramValue)) : new XdmAtomicValue(paramValue.toString())))));

        transformers[0].transform();

        this.xsltExec = this.xsltCompiler.compile(schemaDest.getXdmNode().getUnderlyingNode());

        LOGGER.info(String.format("Prepared Schematron schema (title=%s, sysId=%s) with %d resolved phase(s).", schema.getTitle(), sysId,
            this.resolvedPhases.size()));
    }

    private Map<String, ResolvedPhase> resolvePhases(Schema schema) throws SaxonApiException {
        final Map<String, Phase> phases = new LinkedHashMap<>();
        final Map<String, Pattern> patterns = new LinkedHashMap<>();
        final Map<String, Rule> rules = new LinkedHashMap<>();
        final Map<String, Assert> asserts = new LinkedHashMap<>();

        schema.getPhase().forEach(phase -> phases.put(phase.getId(), phase));

        schema.getPattern().forEach(pattern -> {
            patterns.put(pattern.getId(), pattern);

            pattern.getRule().forEach(rule -> {
                rules.put(rule.getId(), rule);

                rule.getAssert().forEach(azzert -> asserts.put(azzert.getId(), azzert));
            });
        });

        Map<String, ResolvedPhase> resolvedPhases = new LinkedHashMap<>(phases.size());
        List<Pattern> activePatterns;
        ResolvedPhase resolvedPhase;
        Map<String, ResolvedPattern> resolvedPatterns;
        String patternId;
        ResolvedPattern resolvedPattern;
        Pattern pattern;
        Map<String, ResolvedRule> resolvedRules;
        ResolvedRule resolvedRule;
        String ruleId;
        Map<String, ResolvedAssert> resolvedAsserts;

        for (String phaseId : phases.keySet()) {
            resolvedPhases.put(phaseId, (resolvedPhase = new ResolvedPhaseImpl(phaseId)));
            resolvedPhase.setPatterns((resolvedPatterns =
                new LinkedHashMap<>((activePatterns =
                    phases.get(phaseId).getActive().stream().map(active -> ((Pattern) active.getPattern())).collect(Collectors.toList())).size())));

            for (Pattern activePattern : activePatterns) {
                if (StringUtils.isEmpty((patternId = activePattern.getId())) || ((pattern = patterns.get(patternId)).isSetAbstract() && pattern.isAbstract())) {
                    continue;
                }

                resolvedPatterns.put(patternId, (resolvedPattern = new ResolvedPatternImpl(patternId)));
                resolvedPattern.setRules((resolvedRules = new LinkedHashMap<>()));

                for (Rule rule : pattern.getRule()) {
                    if (StringUtils.isEmpty((ruleId = rule.getId())) || (rule.isSetAbstract() && rule.isAbstract())) {
                        continue;
                    }

                    resolvedRules.put(ruleId, (resolvedRule = new ResolvedRuleImpl(ruleId)));
                    resolvedRule.setContext(rule.getContext());
                    resolvedRule.setAsserts((resolvedAsserts = this.resolveAsserts(new LinkedHashMap<>(), rule)));

                    ((RuleImpl) rule).withReport(resolvedAsserts.values().stream().map(resolvedAssert -> {
                        Report report = new ReportImpl();
                        report.setId(resolvedAssert.getId());
                        report.setTest(resolvedAssert.getTest());
                        report.getMixedContent().addAll(Arrays.asList(resolvedAssert.getText()));

                        return report;
                    }).toArray(Report[]::new));
                }
            }
        }

        return resolvedPhases;
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
    public String getDisplayId() {
        return this.displayId;
    }

    @Override
    public void setDisplayId(String displayId) {
        this.displayId = displayId;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public void setId(String id) {
        this.id = id;
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
    public Map<String, ResolvedPhase> getResolvedPhases() {
        return this.resolvedPhases;
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
