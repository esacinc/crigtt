package gov.hhs.onc.crigtt.validate.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.io.impl.ByteArrayResult;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.schematron.Active;
import gov.hhs.onc.crigtt.schematron.Assertion;
import gov.hhs.onc.crigtt.schematron.Extension;
import gov.hhs.onc.crigtt.schematron.IdentityBean;
import gov.hhs.onc.crigtt.schematron.Pattern;
import gov.hhs.onc.crigtt.schematron.Phase;
import gov.hhs.onc.crigtt.schematron.Report;
import gov.hhs.onc.crigtt.schematron.Rule;
import gov.hhs.onc.crigtt.schematron.Schema;
import gov.hhs.onc.crigtt.schematron.Title;
import gov.hhs.onc.crigtt.schematron.impl.ReportImpl;
import gov.hhs.onc.crigtt.schematron.impl.TitleImpl;
import gov.hhs.onc.crigtt.transform.impl.CrigttDocumentBuilder;
import gov.hhs.onc.crigtt.utils.CrigttIteratorUtils;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.CrigttSchematron;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttXmlOutputFactory;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import gov.hhs.onc.crigtt.xml.impl.XdmDocumentDestination;
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
import javax.xml.transform.Source;
import net.sf.saxon.event.Receiver;
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

public class CrigttSchematronImpl implements CrigttSchematron {
    private final static Logger LOGGER = LoggerFactory.getLogger(CrigttSchematronImpl.class);

    @Resource(name = "xmlOutputFactoryCrigtt")
    private CrigttXmlOutputFactory xmlOutFactory;

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
    private Schema schema;
    private Map<String, Phase> phases;
    private Map<String, Pattern> patterns;
    private Map<String, Rule> rules;
    private Map<String, Assertion> assertions;
    private Map<String, List<Pattern>> activePatterns;
    private Map<String, List<Rule>> activeRules;
    private Map<String, List<Assertion>> activeAssertions;
    private XsltExecutable[] xsltExecs;
    private XsltExecutable xsltExec;

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public XdmDocument transform(Source docSrc, Function<Receiver, Receiver> ... docResultFilterBuilders) throws SaxonApiException {
        XsltTransformer docTransformer = this.xsltExec.load();
        docTransformer.setSource(docSrc);

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
        DocumentInfo referencedDocInfo;

        for (String referencedDocUri : this.referencedDocs.keySet()) {
            if ((referencedDocSrc = this.referencedDocs.get(referencedDocUri)) instanceof DocumentInfo) {
                referencedDocInfo = ((DocumentInfo) referencedDocSrc);
            } else {
                referencedDocInfo = this.docBuilder.build(referencedDocSrc).getUnderlyingNode();

                LOGGER.info(String.format("Built Schematron schema (sysId=%s) referenced document (uri=%s, sysId=%s).", sysId, referencedDocUri,
                    referencedDocSrc.getSystemId()));
            }

            this.pooledReferencedDocs.put(new DocumentURI(referencedDocUri), referencedDocInfo);
        }

        (this.schema = this.schematronJaxbMarshaller.unmarshal(this.src, Schema.class)).setQueryBinding(this.queryBinding);
        this.schema.setSchemaVersion(this.schemaVersion);

        if (this.title != null) {
            Title title = new TitleImpl();
            title.getContent().add(this.title);
            this.schema.getContent().add(title);
        }

        List<Object> schemaContent = this.schema.getContent();

        this.phases =
            CrigttStreamUtils.toMap(IdentityBean::getId, Function.<Phase> identity(), LinkedHashMap::new,
                CrigttStreamUtils.instances(schemaContent.stream(), Phase.class).filter(IdentityBean::isSetId));

        this.patterns =
            CrigttStreamUtils.toMap(IdentityBean::getId, Function.<Pattern> identity(), LinkedHashMap::new,
                CrigttStreamUtils.instances(schemaContent.stream(), Pattern.class).filter(IdentityBean::isSetId));

        this.rules =
            CrigttStreamUtils.toMap(IdentityBean::getId, Function.<Rule> identity(), LinkedHashMap::new, this.patterns.values().stream().flatMap(pattern -> {
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
            CrigttStreamUtils.toMap(IdentityBean::getId, Function.<Assertion> identity(), LinkedHashMap::new, this.rules.values().stream().flatMap(rule -> {
                List<Object> ruleContent = rule.getContent();
                Iterator<Assertion> ruleAssertionIterator = CrigttIteratorUtils.instances(rule.getContent().iterator(), Assertion.class);

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

        this.xsltExec = this.xsltCompiler.compile(new ByteArraySource(schemaResult.getBytes(), sysId));

        LOGGER.info(String.format(
            "Prepared Schematron schema (title=%s, sysId=%s, numPhases=%d, numActivePatterns=%d, numActiveRules=%d, numActiveAssertions=%d).", this.title,
            sysId, this.phases.size(), this.activePatterns.values().stream().mapToInt(Collection::size).sum(),
            this.activeRules.values().stream().mapToInt(Collection::size).sum(), this.activeAssertions.values().stream().mapToInt(Collection::size).sum()));
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

    @Override
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
    public Map<String, Assertion> getAssertions() {
        return this.assertions;
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
    public Map<String, Pattern> getPatterns() {
        return this.patterns;
    }

    @Override
    public Map<String, Phase> getPhases() {
        return this.phases;
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
    public Map<String, Rule> getRules() {
        return this.rules;
    }

    @Override
    public Schema getSchema() {
        return this.schema;
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
