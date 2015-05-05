package gov.hhs.onc.crigtt.validate.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.api.IdentityApiBean;
import gov.hhs.onc.crigtt.api.schematron.Assertion;
import gov.hhs.onc.crigtt.api.schematron.Pattern;
import gov.hhs.onc.crigtt.api.schematron.Phase;
import gov.hhs.onc.crigtt.api.schematron.Report;
import gov.hhs.onc.crigtt.api.schematron.Rule;
import gov.hhs.onc.crigtt.api.schematron.Schema;
import gov.hhs.onc.crigtt.api.schematron.Title;
import gov.hhs.onc.crigtt.api.schematron.impl.ReportImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.TitleImpl;
import gov.hhs.onc.crigtt.io.impl.ByteArrayResult;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.transform.impl.CrigttDocumentBuilder;
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

        for (String referencedDocUri : this.referencedDocs.keySet()) {
            this.pooledReferencedDocs.put(new DocumentURI(referencedDocUri),
                this.docBuilder.build((referencedDocSrc = this.referencedDocs.get(referencedDocUri))).getUnderlyingNode());

            LOGGER.info(String.format("Built Schematron schema (sysId=%s) referenced document (uri=%s, sysId=%s).", sysId, referencedDocUri,
                referencedDocSrc.getSystemId()));
        }

        (this.schema = this.schematronJaxbMarshaller.unmarshal(this.src, Schema.class)).setQueryBinding(this.queryBinding);
        this.schema.setSchemaVersion(this.schemaVersion);

        if (this.title != null) {
            Title title = new TitleImpl();
            title.getContent().add(this.title);
            this.schema.getTitles().add(title);
        }

        List<Phase> schemaPhases = this.schema.getPhases();

        schemaPhases.retainAll((this.phases =
            schemaPhases.stream().filter(IdentityApiBean::isSetId)
                .collect(Collectors.toMap(IdentityApiBean::getId, Function.<Phase> identity(), (phase1, phase2) -> phase2, LinkedHashMap::new))).values());

        List<Pattern> schemaPatterns = this.schema.getPatterns();

        schemaPatterns.retainAll((this.patterns =
            schemaPatterns.stream().filter(IdentityApiBean::isSetId)
                .collect(Collectors.toMap(IdentityApiBean::getId, Function.<Pattern> identity(), (pattern1, pattern2) -> pattern2, LinkedHashMap::new)))
            .values());

        this.rules = this.patterns.values().stream().flatMap(pattern -> {
            List<Rule> patternRules = pattern.getRules();
            Iterator<Rule> patternRuleIterator = patternRules.iterator();

            while (patternRuleIterator.hasNext()) {
                if (!patternRuleIterator.next().isSetId()) {
                    patternRuleIterator.remove();
                }
            }

            return patternRules.stream();
        }).collect(Collectors.toMap(IdentityApiBean::getId, Function.<Rule> identity(), (rule1, rule2) -> rule2, LinkedHashMap::new));

        this.assertions = this.rules.values().stream().flatMap(rule -> {
            List<Assertion> ruleAssertions = rule.getAssertions();
            Iterator<Assertion> ruleAssertionIterator = ruleAssertions.iterator();

            while (ruleAssertionIterator.hasNext()) {
                if (!ruleAssertionIterator.next().isSetId()) {
                    ruleAssertionIterator.remove();
                }
            }

            return ruleAssertions.stream();
        }).collect(Collectors.toMap(IdentityApiBean::getId, Function.<Assertion> identity(), (assertion1, assertion2) -> assertion2, LinkedHashMap::new));

        this.activePatterns =
            this.phases
                .entrySet()
                .stream()
                .collect(
                    Collectors.toMap(Entry::getKey, phaseEntry -> phaseEntry.getValue().getActives().stream().map(active -> ((Pattern) active.getPattern()))
                        .collect(Collectors.toList()), (activePatterns1, activePatterns2) -> activePatterns2, LinkedHashMap::new));

        this.activeRules = new LinkedHashMap<>(this.rules.size());
        this.activeAssertions = new LinkedHashMap<>(this.assertions.size());

        List<Rule> activePatternRules;
        List<Assertion> activeRuleAssertions;
        List<Report> activeRuleReports;
        Report activeRuleReport;

        for (Pattern activePattern : this.activePatterns.values().stream().flatMap(Collection::stream).toArray(Pattern[]::new)) {
            this.activeRules.put(activePattern.getId(), (activePatternRules = new ArrayList<>()));

            for (Pattern activePatternItem : buildPatternHierarchy(new ArrayList<>(), activePattern)) {
                for (Rule activeRule : activePatternItem.getRules().stream()
                    .filter(activePatternRule -> (!activePatternRule.isSetAbstract() || !activePatternRule.isAbstract())).toArray(Rule[]::new)) {
                    this.activeAssertions.put(activeRule.getId(), (activeRuleAssertions = new ArrayList<>()));

                    activePatternRules.add(activeRule);

                    activeRule.setReports((activeRuleReports = activeRule.getReports()));

                    for (Rule activeRuleItem : buildRuleHierarchy(new ArrayList<>(), activeRule)) {
                        for (Assertion activeAssertion : activeRuleItem.getAssertions()) {
                            activeRuleAssertions.add(activeAssertion);

                            activeRuleReports.add((activeRuleReport = new ReportImpl()));
                            activeRuleReport.setId(activeAssertion.getId());
                            activeRuleReport.setContent(activeAssertion.getContent());
                            activeRuleReport.setTest(activeAssertion.getTest());
                        }
                    }
                }
            }
        }

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

        rootRule.getExtensions().forEach(ext -> {
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
