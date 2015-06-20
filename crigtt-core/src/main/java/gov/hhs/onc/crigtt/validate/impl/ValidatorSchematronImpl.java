package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import gov.hhs.onc.crigtt.beans.impl.AbstractNamedBean;
import gov.hhs.onc.crigtt.io.impl.ByteArrayResult;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.schematron.Active;
import gov.hhs.onc.crigtt.schematron.Assertion;
import gov.hhs.onc.crigtt.schematron.Direction;
import gov.hhs.onc.crigtt.schematron.Emphasis;
import gov.hhs.onc.crigtt.schematron.Extension;
import gov.hhs.onc.crigtt.schematron.Name;
import gov.hhs.onc.crigtt.schematron.Paragraph;
import gov.hhs.onc.crigtt.schematron.Pattern;
import gov.hhs.onc.crigtt.schematron.Phase;
import gov.hhs.onc.crigtt.schematron.Report;
import gov.hhs.onc.crigtt.schematron.Rule;
import gov.hhs.onc.crigtt.schematron.Schema;
import gov.hhs.onc.crigtt.schematron.Span;
import gov.hhs.onc.crigtt.schematron.Title;
import gov.hhs.onc.crigtt.schematron.impl.ReportImpl;
import gov.hhs.onc.crigtt.schematron.impl.TitleImpl;
import gov.hhs.onc.crigtt.transform.impl.CrigttDocumentBuilder;
import gov.hhs.onc.crigtt.utils.CrigttIteratorUtils;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.ValidatorAssertion;
import gov.hhs.onc.crigtt.validate.ValidatorPattern;
import gov.hhs.onc.crigtt.validate.ValidatorPhase;
import gov.hhs.onc.crigtt.validate.ValidatorRule;
import gov.hhs.onc.crigtt.validate.ValidatorSchema;
import gov.hhs.onc.crigtt.validate.ValidatorSchematron;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttXmlOutputFactory;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import gov.hhs.onc.crigtt.xml.impl.XdmDocumentDestination;
import gov.hhs.onc.crigtt.xml.utils.CrigttXmlUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import javax.annotation.Resource;
import javax.xml.stream.XMLStreamException;
import javax.xml.transform.Source;
import net.sf.saxon.om.DocumentInfo;
import net.sf.saxon.om.DocumentPool;
import net.sf.saxon.om.DocumentURI;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XsltCompiler;
import net.sf.saxon.s9api.XsltExecutable;
import net.sf.saxon.s9api.XsltTransformer;
import net.sf.saxon.stax.XMLStreamWriterDestination;
import org.apache.commons.lang3.ClassUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Element;

public class ValidatorSchematronImpl extends AbstractNamedBean implements ValidatorSchematron {
    private final static Logger LOGGER = LoggerFactory.getLogger(ValidatorSchematronImpl.class);

    @Resource(name = "xmlOutFactoryCrigtt")
    private CrigttXmlOutputFactory xmlOutFactory;

    @Resource(name = "docBuilderBase")
    private CrigttDocumentBuilder docBuilder;

    @Resource(name = "xsltCompilerCrigtt")
    private XsltCompiler xsltCompiler;

    @Resource(name = "jaxbMarshallerSchematron")
    private CrigttJaxbMarshaller schematronJaxbMarshaller;

    private Map<String, ?> params;
    private String queryBinding;
    private Map<String, Source> referencedDocs = new HashMap<>();
    private String schemaVersion;
    private Source src;
    private XsltExecutable[] xsltExecs;
    private Map<DocumentURI, DocumentInfo> pooledReferencedDocs;
    private ValidatorSchema activeSchema;
    private List<ValidatorPhase> activePhases;
    private Map<String, List<ValidatorPattern>> activePatterns;
    private Map<String, List<ValidatorRule>> activeRules;
    private Map<String, List<ValidatorAssertion>> activeAssertions;
    private XsltExecutable schemaXsltExec;

    @Override
    public XdmDocument transform(Source docSrc) throws Exception {
        XsltTransformer docTransformer = this.schemaXsltExec.load();
        docTransformer.setSource(docSrc);

        XdmDocumentDestination docDest = new XdmDocumentDestination();
        docTransformer.setDestination(docDest);

        docTransformer.transform();

        return docDest.getXdmNode();
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        this.initializeReferencedDocuments();
        this.initializeSchema();
    }

    private static List<String> buildTextContent(List<?> content) {
        return buildTextContent(new ArrayList<>(), content);
    }

    private static List<String> buildTextContent(List<String> textContent, List<?> content) {
        content.stream().forEach(contentItem -> {
            if (contentItem instanceof Direction) {
                buildTextContent(textContent, ((Direction) contentItem).getContent());
            } else if (contentItem instanceof Emphasis) {
                textContent.add(((Emphasis) contentItem).getContent());
            } else if (contentItem instanceof Paragraph) {
                buildTextContent(textContent, ((Paragraph) contentItem).getContent());
            } else if (contentItem instanceof Span) {
                buildTextContent(textContent, ((Span) contentItem).getContent());
            } else if (contentItem instanceof Element) {
                CrigttXmlUtils.extractTextContent(textContent, ((Element) contentItem));
            } else if (contentItem instanceof String) {
                textContent.add(((String) contentItem));
            }
        });

        return textContent;
    }

    private static List<Rule> buildRuleHierarchy(List<Rule> rules, Rule rootRule) {
        rules.add(rootRule);

        CrigttStreamUtils.instances(rootRule.getContent().stream(), Extension.class).forEach(ext -> {
            buildRuleHierarchy(rules, ((Rule) ext.getRule()));
        });

        return rules;
    }

    private static List<Pattern> buildPatternHierarchy(List<Pattern> patterns, Pattern rootPattern) {
        patterns.add(rootPattern);

        if (rootPattern.isSetIsA()) {
            buildPatternHierarchy(patterns, ((Pattern) rootPattern.getIsA()));
        }

        return patterns;
    }

    private void initializeSchema() throws SaxonApiException, XMLStreamException {
        Schema schema = this.schematronJaxbMarshaller.unmarshal(this.src, Schema.class);
        schema.setQueryBinding(this.queryBinding);
        schema.setSchemaVersion(this.schemaVersion);

        List<Object> schemaContent = schema.getContent();

        if (this.isSetName()) {
            Title title = new TitleImpl();
            title.setContent(Collections.singletonList(this.name));
            schemaContent.add(0, title);
        }

        Iterator<Phase> schemaPhaseIterator = CrigttIteratorUtils.instances(schemaContent.iterator(), Phase.class);

        CrigttIteratorUtils.stream(schemaPhaseIterator).forEach(schemaPhase -> {
            if (!schemaPhase.isSetId()) {
                schemaPhaseIterator.remove();
            }
        });

        Map<String, Phase> phases =
            CrigttStreamUtils.toMap(Phase::getId, Function.<Phase> identity(), LinkedHashMap::new,
                CrigttIteratorUtils.stream(CrigttIteratorUtils.instances(schemaContent.iterator(), Phase.class)));

        Iterator<Pattern> schemaPatternIterator = CrigttIteratorUtils.instances(schemaContent.iterator(), Pattern.class);

        CrigttIteratorUtils.stream(schemaPatternIterator).forEach(schemaPattern -> {
            if (!schemaPattern.isSetId()) {
                schemaPatternIterator.remove();
            }
        });

        Map<String, Pattern> patterns =
            CrigttStreamUtils.toMap(Pattern::getId, Function.<Pattern> identity(), LinkedHashMap::new,
                CrigttIteratorUtils.stream(CrigttIteratorUtils.instances(schemaContent.iterator(), Pattern.class)));

        Map<String, Rule> rules =
            CrigttStreamUtils.toMap(Rule::getId, Function.<Rule> identity(), LinkedHashMap::new, patterns.values().stream().flatMap(pattern -> {
                List<Object> patternContent = pattern.getContent();
                Iterator<Rule> patternRuleIterator = CrigttIteratorUtils.instances(patternContent.iterator(), Rule.class);

                CrigttIteratorUtils.stream(patternRuleIterator).forEach(patternRule -> {
                    if (!patternRule.isSetId()) {
                        patternRuleIterator.remove();
                    }
                });

                return CrigttStreamUtils.instances(patternContent.stream(), Rule.class);
            }));

        Map<String, Assertion> assertions =
            CrigttStreamUtils.toMap(Assertion::getId, Function.<Assertion> identity(), LinkedHashMap::new, rules.values().stream().flatMap(rule -> {
                List<Object> ruleContent = rule.getContent();
                Iterator<Assertion> ruleAssertionIterator = CrigttIteratorUtils.instances(ruleContent.iterator(), Assertion.class);

                CrigttIteratorUtils.stream(ruleAssertionIterator).forEach(ruleAssertion -> {
                    if (!ruleAssertion.isSetId()) {
                        ruleAssertionIterator.remove();
                    }
                });

                return CrigttStreamUtils.instances(ruleContent.stream(), Assertion.class);
            }));

        (this.activeSchema = new ValidatorSchemaImpl()).setId(this.id);
        this.activeSchema.setName(this.name);
        this.activeSchema.setText(buildTextContent(schemaContent));

        this.activePhases = phases.values().stream().map(phase -> {
            List<?> phaseContent = phase.getContent();

            ValidatorPhase activePhase = new ValidatorPhaseImpl();
            activePhase.setId(phase.getId());
            activePhase.setText(buildTextContent(phaseContent));

            return activePhase;
        }).collect(Collectors.toList());

        this.activePatterns =
            CrigttStreamUtils.toMap(
                IdentifiedBean::getId,
                activePhase -> CrigttStreamUtils.instances(phases.get(activePhase.getId()).getContent().stream(), Active.class)
                    .map(active -> ((Pattern) active.getPattern())).map(pattern -> {
                        List<?> patternContent = pattern.getContent();

                        ValidatorPattern activePattern = new ValidatorPatternImpl();
                        activePattern.setId(pattern.getId());
                        activePattern.setText(buildTextContent(patternContent));

                        return activePattern;
                    }).collect(Collectors.toList()), LinkedHashMap::new, this.activePhases.stream());

        this.activeRules = new LinkedHashMap<>(rules.size());
        this.activeAssertions = new LinkedHashMap<>(assertions.size());

        this.activePatterns
            .values()
            .stream()
            .flatMap(Collection::stream)
            .forEach(
                activePattern -> {
                    List<ValidatorRule> activePatternRules = new ArrayList<>();
                    String activePatternId = activePattern.getId();

                    this.activeRules.put(activePatternId, activePatternRules);

                    buildPatternHierarchy(new ArrayList<>(), patterns.get(activePatternId))
                        .stream()
                        .flatMap(hierarchyPattern -> CrigttStreamUtils.instances(hierarchyPattern.getContent().stream(), Rule.class))
                        .filter(patternRule -> (!patternRule.isSetAbstract() || !patternRule.getAbstract()))
                        .forEach(
                            rule -> {
                                String ruleId = rule.getId();

                                ValidatorRule activeRule = new ValidatorRuleImpl();
                                activeRule.setId(ruleId);
                                activeRule.setContext(rule.getContext());
                                activeRule.setText(buildTextContent(rule.getContent()));
                                activePatternRules.add(activeRule);

                                List<ValidatorAssertion> activeRuleAssertions = new ArrayList<>();
                                this.activeAssertions.put(ruleId, activeRuleAssertions);

                                List<Object> ruleContent = rule.getContent();

                                CrigttStreamUtils
                                    .instances(
                                        buildRuleHierarchy(new ArrayList<>(), rule).stream().flatMap(hierarchyRule -> hierarchyRule.getContent().stream()),
                                        Assertion.class)
                                    .collect(Collectors.toList())
                                    .stream()
                                    .forEach(
                                        assertion -> {
                                            String assertionId = assertion.getId(), assertionTest = assertion.getTest();
                                            List<Serializable> assertionContent = assertion.getContent();

                                            ValidatorAssertion activeAssertion = new ValidatorAssertionImpl();
                                            activeAssertion.setId(assertionId);
                                            activeAssertion.setName(CrigttStreamUtils.instances(assertionContent.stream(), Name.class).findFirst()
                                                .map(Name::getPath).orElse(null));
                                            activeAssertion.setTest(assertionTest);
                                            activeAssertion.setText(buildTextContent(assertionContent));
                                            activeRuleAssertions.add(activeAssertion);

                                            Report report = new ReportImpl();
                                            report.setContent(assertionContent);
                                            report.setDiagnostics(assertion.getDiagnostics());
                                            report.setFlag(assertion.getFlag());
                                            report.setFpi(assertion.getFpi());
                                            report.setId(assertionId);
                                            report.setIcon(assertion.getIcon());
                                            report.setRole(assertion.getRole());
                                            report.setSee(assertion.getSee());
                                            report.setSubject(assertion.getSubject());
                                            report.setRole(assertion.getRole());
                                            report.setTest(assertionTest);
                                            ruleContent.add(report);
                                        });
                            });
                });

        String sysId = this.src.getSystemId();
        ByteArrayResult schemaResult = new ByteArrayResult(sysId);

        this.schematronJaxbMarshaller.marshal(schema, schemaResult);

        XsltTransformer[] transformers = Stream.of(this.xsltExecs).map(XsltExecutable::load).toArray(XsltTransformer[]::new);
        transformers[0].setSource(new ByteArraySource(schemaResult.getBytes(), sysId));

        DocumentPool docPool = transformers[0].getUnderlyingController().getDocumentPool();

        this.pooledReferencedDocs.forEach((pooledReferencedDocUri, pooledReferencedDocInfo) -> docPool.add(pooledReferencedDocInfo, pooledReferencedDocUri));

        IntStream.range(0, (transformers.length - 1)).forEach(
            transformerIndex -> transformers[transformerIndex].setDestination(transformers[(transformerIndex + 1)]));

        XMLStreamWriterDestination schemaDest =
            new XMLStreamWriterDestination(this.xmlOutFactory.createXMLStreamWriter((schemaResult = new ByteArrayResult(sysId))));
        transformers[(transformers.length - 1)].setDestination(schemaDest);

        Optional.ofNullable(this.params)
            .ifPresent(
                params -> params.forEach((paramName, paramValue) -> transformers[(transformers.length - 1)].setParameter(new QName(paramName), (ClassUtils
                    .isAssignable(paramValue.getClass(), Boolean.class)
                    ? new XdmAtomicValue(((Boolean) paramValue)) : new XdmAtomicValue(paramValue.toString())))));

        transformers[0].transform();

        this.schemaXsltExec = this.xsltCompiler.compile(new ByteArraySource(schemaResult.getBytes(), sysId));

        LOGGER.info(String.format(
            "Prepared Schematron schema (id=%s, sysId=%s, numPhases=%d, numActivePatterns=%d, numActiveRules=%d, numActiveAssertions=%d).", this.id, sysId,
            this.activePhases.size(), this.activePatterns.values().stream().mapToInt(Collection::size).sum(),
            this.activeRules.values().stream().mapToInt(Collection::size).sum(), this.activeAssertions.values().stream().mapToInt(Collection::size).sum()));
    }

    private void initializeReferencedDocuments() throws SaxonApiException {
        this.pooledReferencedDocs = new HashMap<>(this.referencedDocs.size());

        Source referencedDocSrc;
        DocumentInfo referencedDocInfo;

        for (String referencedDocUri : this.referencedDocs.keySet()) {
            if ((referencedDocSrc = this.referencedDocs.get(referencedDocUri)) instanceof DocumentInfo) {
                referencedDocInfo = ((DocumentInfo) referencedDocSrc);
            } else {
                referencedDocInfo = this.docBuilder.build(referencedDocSrc).getUnderlyingNode();

                LOGGER.info(String.format("Built Schematron schema (id=%s) referenced document (uri=%s, sysId=%s).", this.id, referencedDocUri,
                    referencedDocSrc.getSystemId()));
            }

            this.pooledReferencedDocs.put(new DocumentURI(referencedDocUri), referencedDocInfo);
        }
    }

    public Map<String, List<ValidatorAssertion>> getActiveAssertions() {
        return this.activeAssertions;
    }

    @Override
    public Map<String, List<ValidatorPattern>> getActivePatterns() {
        return this.activePatterns;
    }

    @Override
    public List<ValidatorPhase> getActivePhases() {
        return this.activePhases;
    }

    @Override
    public Map<String, List<ValidatorRule>> getActiveRules() {
        return this.activeRules;
    }

    @Override
    public ValidatorSchema getActiveSchema() {
        return this.activeSchema;
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
    public XsltExecutable[] getXsltExecutables() {
        return this.xsltExecs;
    }

    @Override
    public void setXsltExecutables(XsltExecutable ... xsltExecs) {
        this.xsltExecs = xsltExecs;
    }
}
