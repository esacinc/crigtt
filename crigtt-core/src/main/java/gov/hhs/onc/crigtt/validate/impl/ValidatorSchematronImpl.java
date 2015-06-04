package gov.hhs.onc.crigtt.validate.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import gov.hhs.onc.crigtt.beans.CrigttIdentifiedBean;
import gov.hhs.onc.crigtt.beans.impl.AbstractCrigttNamedBean;
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
import gov.hhs.onc.crigtt.schematron.dto.AssertionDto;
import gov.hhs.onc.crigtt.schematron.dto.PatternDto;
import gov.hhs.onc.crigtt.schematron.dto.PhaseDto;
import gov.hhs.onc.crigtt.schematron.dto.RuleDto;
import gov.hhs.onc.crigtt.schematron.dto.SchemaDto;
import gov.hhs.onc.crigtt.schematron.dto.impl.AssertionDtoImpl;
import gov.hhs.onc.crigtt.schematron.dto.impl.PatternDtoImpl;
import gov.hhs.onc.crigtt.schematron.dto.impl.PhaseDtoImpl;
import gov.hhs.onc.crigtt.schematron.dto.impl.RuleDtoImpl;
import gov.hhs.onc.crigtt.schematron.dto.impl.SchemaDtoImpl;
import gov.hhs.onc.crigtt.schematron.impl.ReportImpl;
import gov.hhs.onc.crigtt.schematron.impl.TitleImpl;
import gov.hhs.onc.crigtt.transform.impl.CrigttDocumentBuilder;
import gov.hhs.onc.crigtt.utils.CrigttIteratorUtils;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.ValidatorSchematron;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttXmlOutputFactory;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import gov.hhs.onc.crigtt.xml.impl.XdmDocumentDestination;
import gov.hhs.onc.crigtt.xml.utils.CrigttXmlUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
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

public class ValidatorSchematronImpl extends AbstractCrigttNamedBean implements ValidatorSchematron {
    private final static Logger LOGGER = LoggerFactory.getLogger(ValidatorSchematronImpl.class);

    @Resource(name = "objMapperCrigtt")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private ObjectMapper objMapper;

    @Resource(name = "xmlOutputFactoryCrigtt")
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
    private Schema schema;
    private Map<String, Phase> phases;
    private Map<String, Pattern> patterns;
    private Map<String, Rule> rules;
    private Map<String, Assertion> assertions;
    private Map<String, List<Pattern>> activePatterns;
    private Map<String, List<Rule>> activeRules;
    private Map<String, List<Assertion>> activeAssertions;
    private XsltExecutable schemaXsltExec;
    private SchemaDto schemaDto;
    private TokenBuffer schemaJson;

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
        this.initializeSchemaJson();
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
                CrigttXmlUtils.buildTextContent(textContent, ((Element) contentItem));
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

    private void initializeSchemaJson() throws IOException {
        this.schemaDto = new SchemaDtoImpl();
        this.schemaDto.setDisplayName(this.displayName);
        this.schemaDto.setId(this.id);
        this.schemaDto.setName(this.name);
        this.schemaDto.setQueryBinding(this.queryBinding);
        this.schemaDto.setVersion(this.schemaVersion);

        Map<String, AssertionDto> assertionDtos = CrigttStreamUtils.toMap(CrigttIdentifiedBean::getId, activeAssertion -> {
            List<?> activeAssertionContent = activeAssertion.getContent();

            AssertionDto assertionDto = new AssertionDtoImpl();
            assertionDto.setId(activeAssertion.getId());
            assertionDto.setName(CrigttStreamUtils.instances(activeAssertionContent.stream(), Name.class).findFirst().map(Name::getPath).orElse(null));
            assertionDto.setTest(activeAssertion.getTest());
            assertionDto.setText(buildTextContent(activeAssertionContent));

            return assertionDto;
        }, LinkedHashMap::new, this.activeAssertions.values().stream().flatMap(Collection::stream));
        this.schemaDto.setAssertions(assertionDtos);

        Map<String, RuleDto> ruleDtos = CrigttStreamUtils.toMap(CrigttIdentifiedBean::getId, activeRule -> {
            List<?> activeRuleContent = activeRule.getContent();

            RuleDto ruleDto = new RuleDtoImpl();
            ruleDto.setAssertions(this.activeAssertions.get(activeRule.getId()).stream().map(CrigttIdentifiedBean::getId).collect(Collectors.toList()));
            ruleDto.setContext(activeRule.getContext());
            ruleDto.setId(activeRule.getId());
            ruleDto.setText(buildTextContent(activeRuleContent));

            return ruleDto;
        }, LinkedHashMap::new, this.activeRules.values().stream().flatMap(Collection::stream));
        this.schemaDto.setRules(ruleDtos);

        Map<String, PatternDto> patternDtos = CrigttStreamUtils.toMap(CrigttIdentifiedBean::getId, activePattern -> {
            List<?> activePatternContent = activePattern.getContent();

            PatternDto patternDto = new PatternDtoImpl();
            patternDto.setId(activePattern.getId());
            patternDto.setRules(this.activeRules.get(activePattern.getId()).stream().map(CrigttIdentifiedBean::getId).collect(Collectors.toList()));
            patternDto.setText(buildTextContent(activePatternContent));

            return patternDto;
        }, LinkedHashMap::new, this.activePatterns.values().stream().flatMap(Collection::stream));
        this.schemaDto.setPatterns(patternDtos);

        Map<String, PhaseDto> phaseDtos = CrigttStreamUtils.toMap(CrigttIdentifiedBean::getId, phase -> {
            List<?> phaseContent = phase.getContent();

            PhaseDto phaseDto = new PhaseDtoImpl();
            phaseDto.setId(phase.getId());
            phaseDto.setPatterns(this.activePatterns.get(phase.getId()).stream().map(CrigttIdentifiedBean::getId).collect(Collectors.toList()));
            phaseDto.setText(buildTextContent(phaseContent));

            return phaseDto;
        }, LinkedHashMap::new, this.phases.values().stream());
        this.schemaDto.setPhases(phaseDtos);

        (this.schemaJson = new TokenBuffer(this.objMapper, false)).writeObject(this.schemaDto);
    }

    private void initializeSchema() throws SaxonApiException, XMLStreamException {
        this.schema = this.schematronJaxbMarshaller.unmarshal(this.src, Schema.class);
        this.schema.setQueryBinding(this.queryBinding);
        this.schema.setSchemaVersion(this.schemaVersion);

        List<Object> schemaContent = this.schema.getContent();

        if (this.isSetDisplayName()) {
            Title title = new TitleImpl();
            title.setContent(this.displayName);
            schemaContent.add(0, title);
        }

        this.phases =
            CrigttStreamUtils.toMap(CrigttIdentifiedBean::getId, Function.<Phase> identity(), LinkedHashMap::new,
                CrigttStreamUtils.instances(schemaContent.stream(), Phase.class).filter(CrigttIdentifiedBean::isSetId));

        this.patterns =
            CrigttStreamUtils.toMap(CrigttIdentifiedBean::getId, Function.<Pattern> identity(), LinkedHashMap::new,
                CrigttStreamUtils.instances(schemaContent.stream(), Pattern.class).filter(CrigttIdentifiedBean::isSetId));

        this.rules =
            CrigttStreamUtils.toMap(CrigttIdentifiedBean::getId, Function.<Rule> identity(), LinkedHashMap::new,
                this.patterns.values().stream().flatMap(pattern -> {
                    List<Object> patternContent = pattern.getContent();
                    Iterator<Rule> patternRuleIterator = CrigttIteratorUtils.instances(patternContent.iterator(), Rule.class);

                    CrigttIteratorUtils.stream(patternRuleIterator).forEach(patternRule -> {
                        if (!patternRule.isSetId()) {
                            patternRuleIterator.remove();
                        }
                    });

                    return CrigttStreamUtils.instances(patternContent.stream(), Rule.class);
                }));

        this.assertions =
            CrigttStreamUtils.toMap(CrigttIdentifiedBean::getId, Function.<Assertion> identity(), LinkedHashMap::new,
                this.rules.values().stream().flatMap(rule -> {
                    List<Object> ruleContent = rule.getContent();
                    Iterator<Assertion> ruleAssertionIterator = CrigttIteratorUtils.instances(ruleContent.iterator(), Assertion.class);

                    CrigttIteratorUtils.stream(ruleAssertionIterator).forEach(ruleAssertion -> {
                        if (!ruleAssertion.isSetId()) {
                            ruleAssertionIterator.remove();
                        }
                    });

                    return CrigttStreamUtils.instances(ruleContent.stream(), Assertion.class);
                }));

        this.activePatterns =
            CrigttStreamUtils.toMap(
                Entry::getKey,
                phaseEntry -> CrigttStreamUtils.instances(phaseEntry.getValue().getContent().stream(), Active.class)
                    .map(active -> ((Pattern) active.getPattern())).collect(Collectors.toList()), LinkedHashMap::new, this.phases.entrySet().stream());

        this.activeRules = new LinkedHashMap<>(this.rules.size());
        this.activeAssertions = new LinkedHashMap<>(this.assertions.size());

        this.activePatterns
            .values()
            .stream()
            .flatMap(Collection::stream)
            .forEach(
                activePattern -> {
                    List<Rule> activePatternRules = new ArrayList<>();
                    this.activeRules.put(activePattern.getId(), activePatternRules);

                    buildPatternHierarchy(new ArrayList<>(), activePattern)
                        .stream()
                        .flatMap(activeHierarchyPattern -> CrigttStreamUtils.instances(activeHierarchyPattern.getContent().stream(), Rule.class))
                        .filter(activePatternRule -> (!activePatternRule.isSetAbstract() || !activePatternRule.isAbstract()))
                        .forEach(
                            activeRule -> {
                                activePatternRules.add(activeRule);

                                List<Assertion> activeRuleAssertions = new ArrayList<>();
                                this.activeAssertions.put(activeRule.getId(), activeRuleAssertions);

                                List<Object> activeRuleContent = activeRule.getContent();

                                CrigttStreamUtils
                                    .instances(
                                        buildRuleHierarchy(new ArrayList<>(), activeRule).stream().flatMap(
                                            activeHierarchyRule -> activeHierarchyRule.getContent().stream()), Assertion.class).collect(Collectors.toList())
                                    .stream().forEach(activeAssertion -> {
                                        activeRuleAssertions.add(activeAssertion);

                                        Report activeReport = new ReportImpl();
                                        activeReport.setContent(activeAssertion.getContent());
                                        activeReport.setDiagnostics(activeAssertion.getDiagnostics());
                                        activeReport.setFlag(activeAssertion.getFlag());
                                        activeReport.setFpi(activeAssertion.getFpi());
                                        activeReport.setId(activeAssertion.getId());
                                        activeReport.setIcon(activeAssertion.getIcon());
                                        activeReport.setRole(activeAssertion.getRole());
                                        activeReport.setSee(activeAssertion.getSee());
                                        activeReport.setSubject(activeAssertion.getSubject());
                                        activeReport.setRole(activeAssertion.getRole());
                                        activeReport.setTest(activeAssertion.getTest());
                                        activeRuleContent.add(activeReport);
                                    });
                            });
                });

        String sysId = this.src.getSystemId();
        ByteArrayResult schemaResult = new ByteArrayResult(sysId);

        this.schematronJaxbMarshaller.marshal(this.schema, schemaResult);

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
            this.phases.size(), this.activePatterns.values().stream().mapToInt(Collection::size).sum(),
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

    public Map<String, List<Assertion>> getActiveAssertions() {
        return this.activeAssertions;
    }

    @Override
    public Map<String, List<Pattern>> getActivePatterns() {
        return this.activePatterns;
    }

    @Override
    public Map<String, List<Rule>> getActiveRules() {
        return this.activeRules;
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
    public SchemaDto getSchemaDto() {
        return this.schemaDto;
    }

    @Override
    public TokenBuffer getSchemaJson() {
        return this.schemaJson;
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
