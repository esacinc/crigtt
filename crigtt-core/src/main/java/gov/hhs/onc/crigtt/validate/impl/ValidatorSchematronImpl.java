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
import gov.hhs.onc.crigtt.schematron.impl.ReportImpl;
import gov.hhs.onc.crigtt.schematron.impl.TitleImpl;
import gov.hhs.onc.crigtt.utils.CrigttIteratorUtils;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.ValidatorStaticCodeXmlNames;
import gov.hhs.onc.crigtt.validate.ValidatorAssertion;
import gov.hhs.onc.crigtt.validate.ValidatorCode;
import gov.hhs.onc.crigtt.validate.ValidatorCodeSystem;
import gov.hhs.onc.crigtt.validate.ValidatorPattern;
import gov.hhs.onc.crigtt.validate.ValidatorPhase;
import gov.hhs.onc.crigtt.validate.ValidatorRule;
import gov.hhs.onc.crigtt.validate.ValidatorSchema;
import gov.hhs.onc.crigtt.validate.ValidatorSchematron;
import gov.hhs.onc.crigtt.validate.ValidatorValueSet;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttXmlOutputFactory;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import gov.hhs.onc.crigtt.xml.impl.XdmDocumentDestination;
import java.io.Serializable;
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
import org.apache.cxf.helpers.DOMUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Element;

public class ValidatorSchematronImpl extends AbstractNamedBean implements ValidatorSchematron {
    private final static String STATIC_CODE_DOC_BASE_URI_EXPR_PATTERN_FORMAT =
        "^([^$]+@\\w+\\s*=\\s*document\\('\\Q%1$s\\E')(\\)/%2$s:systems/%2$s:system\\[@valueSetOid='[^']+'\\]/%2$s:code/@value[^$]*)$";

    private final static String STATIC_CODE_DOC_BASE_URI_EXPR_FRAGMENT = ", $document-uri";

    private final static Logger LOGGER = LoggerFactory.getLogger(ValidatorSchematronImpl.class);

    @Resource(name = "xmlOutFactoryCrigtt")
    private CrigttXmlOutputFactory xmlOutFactory;

    @Resource(name = "xsltCompilerCrigtt")
    private XsltCompiler xsltCompiler;

    @Resource(name = "jaxbMarshallerSchematron")
    private CrigttJaxbMarshaller schematronJaxbMarshaller;

    private Map<String, ?> params;
    private String queryBinding;
    private XdmDocument[] referencedDocs;
    private String schemaVersion;
    private Source src;
    private XdmDocument staticCodeDoc;
    private XsltExecutable[] xsltExecs;
    private Map<DocumentURI, DocumentInfo> pooledReferencedDocs;
    private Map<String, String> patternPhases;
    private ValidatorSchema activeSchema;
    private Map<String, ValidatorPhase> activePhases;
    private Map<String, ValidatorPattern> activePatterns;
    private Map<String, ValidatorRule> activeRules;
    private Map<String, ValidatorAssertion> activeAssertions;
    private Map<String, ValidatorValueSet> activeValueSets;
    private Map<String, ValidatorCode> activeCodes;
    private Map<String, ValidatorCodeSystem> activeCodeSystems;
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
        (this.pooledReferencedDocs = CrigttStreamUtils.toMap(XdmDocument::getUri, XdmDocument::getUnderlyingNode, Stream.of(this.referencedDocs))).put(
            this.staticCodeDoc.getUri(), this.staticCodeDoc.getUnderlyingNode());

        this.initializeStaticCodes();
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
        this.activeAssertions = new LinkedHashMap<>();

        java.util.regex.Pattern staticCodeDocBaseUriExprPattern =
            java.util.regex.Pattern.compile(String.format(STATIC_CODE_DOC_BASE_URI_EXPR_PATTERN_FORMAT, this.staticCodeDoc.getUri().toString(),
                CrigttStreamUtils.instances(schemaContent.stream(), Namespace.class).filter(ns -> ns.getUri().equals(CrigttXmlNs.STATIC_CODE_URI)).findFirst()
                    .get().getPrefix()));

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
                activeRules.put(ruleId, activeRule);

                CrigttIteratorUtils.stream(CrigttIteratorUtils.instances(ruleContentIterator, Assertion.class)).forEach(
                    assertion -> {
                        List<Serializable> assertionContent = filterContent(assertion.getContent());
                        String assertionId = assertion.getId(), assertionTest = assertion.getTest();
                        Matcher staticCodeDocExprMatcher = staticCodeDocBaseUriExprPattern.matcher(assertionTest);

                        if (staticCodeDocExprMatcher.matches()) {
                            assertion.setTest((assertionTest =
                                (staticCodeDocExprMatcher.group(1) + STATIC_CODE_DOC_BASE_URI_EXPR_FRAGMENT + staticCodeDocExprMatcher.group(2))));
                        }

                        assertions.put(assertionId, assertion);

                        ValidatorAssertion activeAssertion = new ValidatorAssertionImpl();
                        activeAssertion.setId(assertionId);
                        activeAssertion.setName(CrigttStreamUtils.firstInstance(assertionContent.stream(), Name.class).map(Name::getPath).orElse(null));

                        Report report = new ReportImpl();
                        report.setId(assertionId);
                        report.setContent(assertionContent);
                        report.setTest(assertionTest);
                        ruleContentIterator.add(report);
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

        LOGGER.info(String.format("Prepared Schematron schema (id=%s, sysId=%s, numPhases=%d, numPatterns=%d, numRules=%d, numAssertions=%d).", this.id, sysId,
            numPhases, numPatterns, rules.size(), assertions.size()));
    }

    private void initializeStaticCodes() {
        this.activeValueSets = new LinkedHashMap<>();
        this.activeCodeSystems = new LinkedHashMap<>();
        this.activeCodes = new LinkedHashMap<>();

        String staticCodeElemId;
        ValidatorValueSet activeValueSet;
        ValidatorCodeSystem activeCodeSystem;
        ValidatorCode activeCode;

        for (Element valueSetElem : DOMUtils.findAllElementsByTagNameNS(this.staticCodeDoc.getDocument().getDocumentElement(), CrigttXmlNs.STATIC_CODE_URI,
            ValidatorStaticCodeXmlNames.SYSTEM_ELEM_NAME)) {
            this.activeValueSets.put((staticCodeElemId = valueSetElem.getAttribute(ValidatorStaticCodeXmlNames.VALUE_SET_OID_ATTR_NAME)), (activeValueSet =
                new ValidatorValueSetImpl()));
            activeValueSet.setId(staticCodeElemId);
            activeValueSet.setName(valueSetElem.getAttribute(ValidatorStaticCodeXmlNames.VALUE_SET_NAME_ATTR_NAME));

            for (Element codeElem : DOMUtils.findAllElementsByTagNameNS(valueSetElem, CrigttXmlNs.STATIC_CODE_URI, ValidatorStaticCodeXmlNames.CODE_ELEM_NAME)) {
                this.activeCodeSystems.put((staticCodeElemId = codeElem.getAttribute(ValidatorStaticCodeXmlNames.CODE_SYSTEM_ATTR_NAME)), (activeCodeSystem =
                    new ValidatorCodeSystemImpl()));
                activeCodeSystem.setId(staticCodeElemId);
                activeCodeSystem.setName(codeElem.getAttribute(ValidatorStaticCodeXmlNames.CODE_SYSTEM_NAME_ATTR_NAME));

                this.activeCodes.put((staticCodeElemId = codeElem.getAttribute(ValidatorStaticCodeXmlNames.VALUE_ATTR_NAME)), (activeCode =
                    new ValidatorCodeImpl()));
                activeCode.setId(staticCodeElemId);
                activeCode.setName(codeElem.getAttribute(ValidatorStaticCodeXmlNames.DISPLAY_NAME_ATTR_NAME));
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
    public XdmDocument getStaticCodeDocument() {
        return this.staticCodeDoc;
    }

    @Override
    public void setStaticCodeDocument(XdmDocument staticCodeDoc) {
        this.staticCodeDoc = staticCodeDoc;
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
