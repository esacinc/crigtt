package gov.hhs.onc.crigtt.validate.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.api.schematron.Assertion;
import gov.hhs.onc.crigtt.api.schematron.Extension;
import gov.hhs.onc.crigtt.api.schematron.Pattern;
import gov.hhs.onc.crigtt.api.schematron.Phase;
import gov.hhs.onc.crigtt.api.schematron.Report;
import gov.hhs.onc.crigtt.api.schematron.ResolvedAssertion;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPhase;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import gov.hhs.onc.crigtt.api.schematron.Rule;
import gov.hhs.onc.crigtt.api.schematron.Schema;
import gov.hhs.onc.crigtt.api.schematron.Title;
import gov.hhs.onc.crigtt.api.schematron.impl.ReportImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedAssertionImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedPatternImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedPhaseImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedRuleImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.TitleImpl;
import gov.hhs.onc.crigtt.io.impl.ByteArrayResult;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.transform.impl.CrigttDocumentBuilder;
import gov.hhs.onc.crigtt.validate.CrigttSchematron;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import gov.hhs.onc.crigtt.xml.impl.XdmDocumentDestination;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import javax.annotation.Resource;
import javax.xml.transform.Source;
import net.sf.saxon.event.Receiver;
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
    private String queryBinding;
    private Map<String, Source> referencedDocs = new HashMap<>();
    private String schemaVersion;
    private Source src;
    private String title;
    private Map<DocumentURI, DocumentInfo> pooledReferencedDocs;
    private Map<String, ResolvedPhase> resolvedPhases;
    private XsltExecutable[] xsltExecs;
    private XsltExecutable xsltExec;

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public XdmDocument transform(Source docSrc, Function<Receiver, Receiver> ... docResultFilterBuilders) throws SaxonApiException {
        XsltTransformer docTransformer = this.xsltExec.load();
        docTransformer.setSource(docSrc);

        DocumentPool docPool = docTransformer.getUnderlyingController().getDocumentPool();

        this.pooledReferencedDocs.forEach((pooledReferencedDocUri, pooledReferencedDocInfo) -> docPool.add(pooledReferencedDocInfo, pooledReferencedDocUri));

        XdmDocumentDestination docDest = new XdmDocumentDestination(docResultFilterBuilders);
        docTransformer.setDestination(docDest);

        docTransformer.transform();

        return docDest.getXdmNode();
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        String sysId = this.src.getSystemId();

        this.pooledReferencedDocs = new HashMap<>(this.referencedDocs.size());

        Source referencedDocSrc;

        for (String referencedDocUri : this.referencedDocs.keySet()) {
            this.pooledReferencedDocs.put(new DocumentURI(referencedDocUri),
                this.docBuilder.build((referencedDocSrc = this.referencedDocs.get(referencedDocUri))).getUnderlyingNode());

            LOGGER.info(String.format("Built Schematron schema (sysId=%s) referenced document (uri=%s, sysId=%s).", sysId, referencedDocUri,
                referencedDocSrc.getSystemId()));
        }

        Schema schema = this.schematronJaxbMarshaller.unmarshal(this.src, Schema.class);
        schema.setQueryBinding(this.queryBinding);
        schema.setSchemaVersion(this.schemaVersion);

        if (this.title != null) {
            Title title = new TitleImpl();
            title.getContent().add(this.title);
            schema.getTitles().add(title);
        }

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

        LOGGER.info(String.format("Prepared Schematron schema (title=%s, sysId=%s) with %d resolved phase(s).", this.title, sysId, this.resolvedPhases.size()));
    }

    private Map<String, ResolvedPhase> resolvePhases(Schema schema) throws SaxonApiException {
        final Map<String, Phase> phases = new LinkedHashMap<>();
        final Map<String, Pattern> patterns = new LinkedHashMap<>();
        final Map<String, Rule> rules = new LinkedHashMap<>();
        final Map<String, Assertion> assertions = new LinkedHashMap<>();

        schema.getPhases().forEach(phase -> phases.put(phase.getId(), phase));

        schema.getPatterns().forEach(pattern -> {
            patterns.put(pattern.getId(), pattern);

            pattern.getRules().forEach(rule -> {
                rules.put(rule.getId(), rule);

                rule.getAssertions().forEach(assertion -> assertions.put(assertion.getId(), assertion));
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
        Map<String, ResolvedAssertion> resolvedAssertions;

        for (String phaseId : phases.keySet()) {
            resolvedPhases.put(phaseId, (resolvedPhase = new ResolvedPhaseImpl(phaseId)));
            resolvedPhase.setPatterns((resolvedPatterns =
                new LinkedHashMap<>((activePatterns =
                    phases.get(phaseId).getActives().stream().map(active -> ((Pattern) active.getPattern())).collect(Collectors.toList())).size())));

            for (Pattern activePattern : activePatterns) {
                if (StringUtils.isEmpty((patternId = activePattern.getId())) || ((pattern = patterns.get(patternId)).isSetAbstract() && pattern.isAbstract())) {
                    continue;
                }

                resolvedPatterns.put(patternId, (resolvedPattern = new ResolvedPatternImpl(patternId)));
                resolvedPattern.setRules((resolvedRules = new LinkedHashMap<>()));

                for (Rule rule : pattern.getRules()) {
                    if (StringUtils.isEmpty((ruleId = rule.getId())) || (rule.isSetAbstract() && rule.isAbstract())) {
                        continue;
                    }

                    resolvedRules.put(ruleId, (resolvedRule = new ResolvedRuleImpl(ruleId)));
                    resolvedRule.setContext(rule.getContext());
                    resolvedRule.setAssertions((resolvedAssertions = this.resolveAssertions(new LinkedHashMap<>(), rule)));

                    rule.setReports(resolvedAssertions.values().stream().map(resolvedAssertion -> {
                        Report report = new ReportImpl();
                        report.setId(resolvedAssertion.getId());
                        report.setTest(resolvedAssertion.getTest());
                        report.getContent().addAll(Arrays.asList(resolvedAssertion.getText()));

                        return report;
                    }).collect(Collectors.toList()));
                }
            }
        }

        return resolvedPhases;
    }

    private Map<String, ResolvedAssertion> resolveAssertions(Map<String, ResolvedAssertion> resolvedAssertions, Rule rule) throws SaxonApiException {
        for (Extension extension : rule.getExtensions()) {
            this.resolveAssertions(resolvedAssertions, ((Rule) extension.getRule()));
        }

        ResolvedAssertion resolvedAssertion;
        String assertionId;

        for (Assertion assertion : rule.getAssertions()) {
            if (StringUtils.isEmpty((assertionId = assertion.getId()))) {
                continue;
            }

            resolvedAssertions.put(assertionId, (resolvedAssertion = new ResolvedAssertionImpl(assertionId)));
            resolvedAssertion.setTest(assertion.getTest());
            resolvedAssertion.setText(assertion.getContent().stream().toArray(String[]::new));
        }

        return resolvedAssertions;
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
    public String getQueryBinding() {
        return this.queryBinding;
    }

    @Override
    public void setQueryBinding(String queryBinding) {
        this.queryBinding = queryBinding;
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
    public String getSchemaVersion() {
        return this.schemaVersion;
    }

    @Override
    public void setSchemaVersion(String schemaVersion) {
        this.schemaVersion = schemaVersion;
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
    public String getTitle() {
        return this.title;
    }

    @Override
    public void setTitle(String title) {
        this.title = title;
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
