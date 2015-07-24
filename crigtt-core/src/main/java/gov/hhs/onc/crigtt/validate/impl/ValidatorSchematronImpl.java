package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import gov.hhs.onc.crigtt.beans.impl.AbstractNamedBean;
import gov.hhs.onc.crigtt.io.impl.ByteArrayResult;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.schematron.Active;
import gov.hhs.onc.crigtt.schematron.Assertion;
import gov.hhs.onc.crigtt.schematron.Name;
import gov.hhs.onc.crigtt.schematron.Namespace;
import gov.hhs.onc.crigtt.schematron.Pattern;
import gov.hhs.onc.crigtt.schematron.Phase;
import gov.hhs.onc.crigtt.schematron.Report;
import gov.hhs.onc.crigtt.schematron.Rule;
import gov.hhs.onc.crigtt.schematron.Schema;
import gov.hhs.onc.crigtt.schematron.Title;
import gov.hhs.onc.crigtt.schematron.impl.NamespaceImpl;
import gov.hhs.onc.crigtt.schematron.impl.ReportImpl;
import gov.hhs.onc.crigtt.schematron.impl.TitleImpl;
import gov.hhs.onc.crigtt.transform.impl.CrigttXsltCompiler;
import gov.hhs.onc.crigtt.transform.impl.CrigttXsltExecutable;
import gov.hhs.onc.crigtt.transform.impl.CrigttXsltTransformer;
import gov.hhs.onc.crigtt.utils.CrigttIteratorUtils;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.ValidatorAssertion;
import gov.hhs.onc.crigtt.validate.ValidatorCode;
import gov.hhs.onc.crigtt.validate.ValidatorCodeSystem;
import gov.hhs.onc.crigtt.validate.ValidatorPattern;
import gov.hhs.onc.crigtt.validate.ValidatorPhase;
import gov.hhs.onc.crigtt.validate.ValidatorRule;
import gov.hhs.onc.crigtt.validate.ValidatorSchema;
import gov.hhs.onc.crigtt.validate.ValidatorSchematron;
import gov.hhs.onc.crigtt.validate.vocab.StaticVocabXmlNames;
import gov.hhs.onc.crigtt.validate.ValidatorValueSet;
import gov.hhs.onc.crigtt.validate.vocab.impl.ValidatorStaticVocabFunction;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttXmlOutputFactory;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import gov.hhs.onc.crigtt.xml.impl.XdmDocumentDestination;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import javax.annotation.Nullable;
import javax.annotation.Resource;
import javax.xml.stream.XMLStreamException;
import javax.xml.transform.Source;
import net.sf.saxon.lib.ExtensionFunctionDefinition;
import net.sf.saxon.om.DocumentInfo;
import net.sf.saxon.om.DocumentPool;
import net.sf.saxon.om.DocumentURI;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.stax.XMLStreamWriterDestination;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.cxf.helpers.DOMUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Element;

public class ValidatorSchematronImpl extends AbstractNamedBean implements ValidatorSchematron {
    private final static String STATIC_VOCAB_EXPR_PATTERN_FORMAT =
        "^([^$]+)(@\\w+)(\\s*=\\s*)document\\('\\Q%1$s\\E'\\)/%2$s:systems/%2$s:system\\[@valueSetOid='([^']+)'\\]/%2$s:code/@(value|displayName)([^$]*)$";

    private final static String STATIC_VOCAB_REPLACE_EXPR_FORMAT = "%1$s" + ValidatorStaticVocabFunction.NAME.toString() + "('%2$s', '%3$s', '%4$s', @"
        + StaticVocabXmlNames.CODE_SYSTEM_ATTR_NAME + ", '%5$s', %6$s)%7$s";

    private final static Logger LOGGER = LoggerFactory.getLogger(ValidatorSchematronImpl.class);

    @Resource(name = "xmlOutFactoryCrigtt")
    private CrigttXmlOutputFactory xmlOutFactory;

    @Resource(name = "xsltCompilerCrigtt")
    private CrigttXsltCompiler xsltCompiler;

    @Resource(name = "jaxbMarshallerSchematron")
    private CrigttJaxbMarshaller schematronJaxbMarshaller;

    private ExtensionFunctionDefinition[] extFuncs;
    private Map<String, ?> params;
    private String queryBinding;
    private XdmDocument[] referencedDocs;
    private String schemaVersion;
    private Source src;
    private XdmDocument staticVocabDoc;
    private Map<String, List<String>> valueSetCodes;
    private Map<String, List<String>> valueSetCodeNames;
    private Map<String, String> codeNames;
    private CrigttXsltExecutable[] xsltExecs;
    private Map<DocumentURI, DocumentInfo> pooledReferencedDocs;
    private Map<String, String> patternPhases;
    private ValidatorSchema activeSchema;
    private Map<String, ValidatorPhase> activePhases;
    private Map<String, ValidatorPattern> activePatterns;
    private Map<String, ValidatorRule> activeRules;
    private Map<String, ValidatorAssertion> activeAssertions;
    private Map<String, String> initTestExprs;
    private Map<String, ValidatorValueSet> activeValueSets;
    private Map<String, ValidatorCodeSystem> activeCodeSystems;
    private Map<String, ValidatorCode> activeCodes;
    private CrigttXsltExecutable schemaXsltExec;

    @Override
    public XdmDocument transform(Source docSrc) throws Exception {
        return this.transform(docSrc, null);
    }

    @Override
    public XdmDocument transform(Source docSrc, @Nullable Map<Object, Object> contextData) throws Exception {
        CrigttXsltTransformer docTransformer = this.schemaXsltExec.load();
        docTransformer.setSource(docSrc);

        if (!MapUtils.isEmpty(contextData)) {
            docTransformer.getUnderlyingController().getContextData().putAll(contextData);
        }

        XdmDocumentDestination docDest = new XdmDocumentDestination();
        docTransformer.setDestination(docDest);

        docTransformer.transform();

        return docDest.getXdmNode();
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        this.pooledReferencedDocs = CrigttStreamUtils.toMap(XdmDocument::getUri, XdmDocument::getUnderlyingNode, Stream.of(this.referencedDocs));

        this.initializeStaticVocab();
        this.initializeSchema();
    }

    private static <T extends IdentifiedBean> Map<String, T> mapComponents(List<?> content, Class<T> componentClass) {
        return CrigttStreamUtils.toMap(IdentifiedBean::getId, Function.<T> identity(), LinkedHashMap::new,
            CrigttStreamUtils.instances(content.stream(), componentClass));
    }

    private static <T> List<T> filterContent(List<T> content) {
        Iterator<T> contentIterator = content.iterator();

        CrigttIteratorUtils.stream(CrigttIteratorUtils.instances(contentIterator, IdentifiedBean.class)).forEach(contentItem -> {
            if (!contentItem.isSetId()) {
                contentIterator.remove();
            }
        });

        return content;
    }

    private void initializeSchema() throws SaxonApiException, XMLStreamException {
        Schema schema = this.schematronJaxbMarshaller.unmarshal(this.src, Schema.class);
        schema.setQueryBinding(this.queryBinding);
        schema.setSchemaVersion(this.schemaVersion);

        List<Object> schemaContent = filterContent(schema.getContent());

        this.activeSchema = new ValidatorSchemaImpl();

        if (this.isSetId()) {
            schema.setId(this.id);

            this.activeSchema.setId(this.id);
        }

        Namespace validateNs = new NamespaceImpl();
        validateNs.setPrefix(CrigttXmlNs.VALIDATE_PREFIX);
        validateNs.setUri(CrigttXmlNs.VALIDATE_URI);
        schemaContent.add(0, validateNs);

        if (this.isSetName()) {
            Title title = new TitleImpl();
            title.setContent(Collections.singletonList(this.name));
            schemaContent.add(0, title);

            this.activeSchema.setName(this.name);
        }

        Map<String, Phase> phases = mapComponents(schemaContent, Phase.class);
        int numPhases = phases.size();

        this.activePhases = new LinkedHashMap<>(numPhases);

        phases.forEach((phaseId, phase) -> {
            ValidatorPhase activePhase = new ValidatorPhaseImpl();
            activePhase.setId(phaseId);
            this.activePhases.put(phaseId, activePhase);
        });

        Map<String, Pattern> patterns = mapComponents(schemaContent, Pattern.class);
        int numPatterns = patterns.size();

        this.patternPhases = new LinkedHashMap<>(numPatterns);
        this.activePatterns = new LinkedHashMap<>(numPatterns);

        Map<String, Rule> rules = new LinkedHashMap<>();
        Map<String, Assertion> assertions = new LinkedHashMap<>();

        this.activeRules = new LinkedHashMap<>();
        this.initTestExprs = new LinkedHashMap<>();
        this.activeAssertions = new LinkedHashMap<>();

        java.util.regex.Pattern staticVocabExprPattern =
            java.util.regex.Pattern.compile(String.format(STATIC_VOCAB_EXPR_PATTERN_FORMAT, this.staticVocabDoc.getUri().toString(), CrigttStreamUtils
                .instances(schemaContent.stream(), Namespace.class).filter(ns -> ns.getUri().equals(CrigttXmlNs.STATIC_VOCAB_URI)).findFirst().get()
                .getPrefix()));

        patterns.forEach((patternId, pattern) -> {
            for (String phaseId : phases.keySet()) {
                // noinspection ConstantConditions
            if (CrigttStreamUtils.instances(phases.get(phaseId).getContent().stream(), Active.class).anyMatch(
                active -> ((Pattern) active.getPattern()).getId().equals(patternId))) {
                this.patternPhases.put(patternId, phaseId);
                break;
            }
        }

        List<Object> patternContent = filterContent(pattern.getContent());

        CrigttStreamUtils.instances(patternContent.stream(), Rule.class).forEach(
            rule -> {
                ListIterator<Object> ruleContentIterator = filterContent(rule.getContent()).listIterator();
                String ruleId = rule.getId();

                rules.put(ruleId, rule);

                ValidatorRule activeRule = new ValidatorRuleImpl();
                activeRule.setId(ruleId);
                this.activeRules.put(ruleId, activeRule);

                CrigttIteratorUtils.stream(CrigttIteratorUtils.instances(ruleContentIterator, Assertion.class)).forEach(
                    assertion -> {
                        List<Serializable> assertionContent = filterContent(assertion.getContent());
                        String assertionId = assertion.getId(), assertionTest = assertion.getTest();
                        Matcher staticVocabExprMatcher = staticVocabExprPattern.matcher(assertionTest);

                        if (staticVocabExprMatcher.matches()) {
                            this.initTestExprs.put(assertionId, assertionTest);

                            assertion.setTest((assertionTest =
                                String.format(STATIC_VOCAB_REPLACE_EXPR_FORMAT,
                                    (staticVocabExprMatcher.group(1) + staticVocabExprMatcher.group(2) + staticVocabExprMatcher.group(3)), patternId,
                                    assertionId, staticVocabExprMatcher.group(4), staticVocabExprMatcher.group(5), staticVocabExprMatcher.group(2),
                                    staticVocabExprMatcher.group(6))));
                        }

                        assertions.put(assertionId, assertion);

                        Report report = new ReportImpl();
                        report.setId(assertionId);
                        report.setContent(assertionContent);
                        report.setTest(assertionTest);
                        ruleContentIterator.add(report);

                        ValidatorAssertion activeAssertion = new ValidatorAssertionImpl();
                        activeAssertion.setId(assertionId);
                        activeAssertion.setName(CrigttStreamUtils.firstInstance(assertionContent.stream(), Name.class).map(Name::getPath).orElse(null));
                        this.activeAssertions.put(assertionId, activeAssertion);
                    });
            });

        ValidatorPattern activePattern = new ValidatorPatternImpl();
        activePattern.setId(patternId);
        activePattern.setName(CrigttStreamUtils.firstInstance(patternContent.stream(), Name.class).map(Name::getPath).orElse(null));
        this.activePatterns.put(patternId, activePattern);
    })  ;

        String sysId = this.src.getSystemId();
        ByteArrayResult schemaResult = new ByteArrayResult(sysId);

        this.schematronJaxbMarshaller.marshal(schema, schemaResult);

        CrigttXsltTransformer[] transformers = Stream.of(this.xsltExecs).map(CrigttXsltExecutable::load).toArray(CrigttXsltTransformer[]::new);
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

        this.schemaXsltExec = this.xsltCompiler.compile(new ByteArraySource(schemaResult.getBytes(), sysId), this.extFuncs);

        LOGGER.info(String.format("Prepared Schematron schema (id=%s, sysId=%s, numPhases=%d, numPatterns=%d, numRules=%d, numAssertions=%d).", this.id, sysId,
            numPhases, numPatterns, rules.size(), assertions.size()));
    }

    private void initializeStaticVocab() {
        this.activeValueSets = new LinkedHashMap<>();
        this.activeCodeSystems = new LinkedHashMap<>();
        this.activeCodes = new LinkedHashMap<>();
        this.valueSetCodes = new LinkedHashMap<>();
        this.valueSetCodeNames = new LinkedHashMap<>();
        this.codeNames = new LinkedHashMap<>();

        String valueSetId, codeSystemId, codeId, codeName;
        ValidatorValueSet activeValueSet;
        List<String> valueSetCodeItems, valueSetCodeNameItems;
        ValidatorCodeSystem activeCodeSystem;
        ValidatorCode activeCode;

        for (Element valueSetElem : DOMUtils.findAllElementsByTagNameNS(this.staticVocabDoc.getDocument().getDocumentElement(), CrigttXmlNs.STATIC_VOCAB_URI,
            StaticVocabXmlNames.SYSTEM_ELEM_NAME)) {
            this.activeValueSets.put((valueSetId = valueSetElem.getAttribute(StaticVocabXmlNames.VALUE_SET_OID_ATTR_NAME)), (activeValueSet =
                new ValidatorValueSetImpl()));
            activeValueSet.setId(valueSetId);
            activeValueSet.setName(valueSetElem.getAttribute(StaticVocabXmlNames.VALUE_SET_NAME_ATTR_NAME));

            this.valueSetCodes.put(valueSetId, (valueSetCodeItems = new ArrayList<>()));
            this.valueSetCodeNames.put(valueSetId, (valueSetCodeNameItems = new ArrayList<>()));

            for (Element codeElem : DOMUtils
                .findAllElementsByTagNameNS(valueSetElem, CrigttXmlNs.STATIC_VOCAB_URI, StaticVocabXmlNames.CODE_ELEM_NAME)) {
                this.activeCodeSystems.put((codeSystemId = codeElem.getAttribute(StaticVocabXmlNames.CODE_SYSTEM_ATTR_NAME)), (activeCodeSystem =
                    new ValidatorCodeSystemImpl()));
                activeCodeSystem.setId(codeSystemId);
                activeCodeSystem.setName(codeElem.getAttribute(StaticVocabXmlNames.CODE_SYSTEM_NAME_ATTR_NAME));

                this.activeCodes.put((codeId = codeElem.getAttribute(StaticVocabXmlNames.VALUE_ATTR_NAME)), (activeCode = new ValidatorCodeImpl()));
                activeCode.setId(codeId);
                activeCode.setName((codeName = codeElem.getAttribute(StaticVocabXmlNames.DISPLAY_NAME_ATTR_NAME)));

                valueSetCodeItems.add(codeId);
                valueSetCodeNameItems.add(codeName);

                this.codeNames.put(codeName, codeId);
            }
        }
    }

    @Override
    public Map<String, ValidatorAssertion> getActiveAssertions() {
        return this.activeAssertions;
    }

    @Override
    public Map<String, ValidatorCode> getActiveCodes() {
        return this.activeCodes;
    }

    @Override
    public Map<String, ValidatorCodeSystem> getActiveCodeSystems() {
        return this.activeCodeSystems;
    }

    @Override
    public Map<String, ValidatorPattern> getActivePatterns() {
        return this.activePatterns;
    }

    @Override
    public Map<String, ValidatorPhase> getActivePhases() {
        return this.activePhases;
    }

    @Override
    public Map<String, ValidatorRule> getActiveRules() {
        return this.activeRules;
    }

    @Override
    public ValidatorSchema getActiveSchema() {
        return this.activeSchema;
    }

    @Override
    public Map<String, ValidatorValueSet> getActiveValueSets() {
        return this.activeValueSets;
    }

    @Override
    public Map<String, String> getCodeNames() {
        return this.codeNames;
    }

    @Override
    public ExtensionFunctionDefinition[] getExtensionFunctions() {
        return this.extFuncs;
    }

    @Override
    public void setExtensionFunctions(ExtensionFunctionDefinition ... extFuncs) {
        this.extFuncs = extFuncs;
    }

    @Override
    public Map<String, String> getInitialTestExpressions() {
        return this.initTestExprs;
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
    public Map<String, String> getPatternPhases() {
        return this.patternPhases;
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
    public XdmDocument[] getReferencedDocuments() {
        return this.referencedDocs;
    }

    @Override
    public void setReferencedDocuments(XdmDocument ... referencedDocs) {
        this.referencedDocs = referencedDocs;
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
    public XdmDocument getStaticVocabDocument() {
        return this.staticVocabDoc;
    }

    @Override
    public void setStaticVocabDocument(XdmDocument staticVocabDoc) {
        this.staticVocabDoc = staticVocabDoc;
    }

    @Override
    public Map<String, List<String>> getValueSetCodeNames() {
        return this.valueSetCodeNames;
    }

    @Override
    public Map<String, List<String>> getValueSetCodes() {
        return this.valueSetCodes;
    }

    @Override
    public CrigttXsltExecutable[] getXsltExecutables() {
        return this.xsltExecs;
    }

    @Override
    public void setXsltExecutables(CrigttXsltExecutable ... xsltExecs) {
        this.xsltExecs = xsltExecs;
    }
}
