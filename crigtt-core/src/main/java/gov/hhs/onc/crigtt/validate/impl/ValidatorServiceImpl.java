package gov.hhs.onc.crigtt.validate.impl;

import br.net.woodstock.rockframework.security.digest.Digester;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.schematron.svrl.ActivePattern;
import gov.hhs.onc.crigtt.schematron.svrl.AttributeValueNamespace;
import gov.hhs.onc.crigtt.schematron.svrl.FailedAssertion;
import gov.hhs.onc.crigtt.schematron.svrl.FiredRule;
import gov.hhs.onc.crigtt.schematron.svrl.Output;
import gov.hhs.onc.crigtt.schematron.svrl.SuccessfulReport;
import gov.hhs.onc.crigtt.transform.impl.CrigttDocumentBuilder;
import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.utils.CrigttFunctionUtils;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.ValidatorStaticCodeXmlNames;
import gov.hhs.onc.crigtt.validate.ValidatorAssertion;
import gov.hhs.onc.crigtt.validate.ValidatorCacheService;
import gov.hhs.onc.crigtt.validate.ValidatorCode;
import gov.hhs.onc.crigtt.validate.ValidatorCodeSystem;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorEventTotals;
import gov.hhs.onc.crigtt.validate.ValidatorLevel;
import gov.hhs.onc.crigtt.validate.ValidatorLocation;
import gov.hhs.onc.crigtt.validate.ValidatorPattern;
import gov.hhs.onc.crigtt.validate.ValidatorPhase;
import gov.hhs.onc.crigtt.validate.ValidatorReport;
import gov.hhs.onc.crigtt.validate.ValidatorResults;
import gov.hhs.onc.crigtt.validate.ValidatorRule;
import gov.hhs.onc.crigtt.validate.ValidatorSchema;
import gov.hhs.onc.crigtt.validate.ValidatorSchematron;
import gov.hhs.onc.crigtt.validate.ValidatorService;
import gov.hhs.onc.crigtt.validate.ValidatorSubmission;
import gov.hhs.onc.crigtt.validate.ValidatorValueSet;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Stream;
import javax.annotation.Resource;
import net.sf.saxon.dom.ElementOverNodeInfo;
import net.sf.saxon.dom.NodeOverNodeInfo;
import net.sf.saxon.om.NamespaceBinding;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.sxpath.IndependentContext;
import org.joda.time.Instant;

public class ValidatorServiceImpl implements ValidatorService {
    private final static String STATIC_CODE_DOC_EXPR_PATTERN_FORMAT =
        "^([^$]+@\\w+\\s*=\\s*document\\('\\Q%1$s\\E'[^\\)]+\\))(/%2$s:systems/%2$s:system\\[@valueSetOid='[^']+'\\])(/%2$s:code/@value[^$]*)$";

    @Resource(name = "docBuilderBase")
    private CrigttDocumentBuilder docBuilder;

    @Resource(name = "xpathCompilerBase")
    private CrigttXpathCompiler xpathCompiler;

    @Resource(name = "jaxbMarshallerSchematronSvrl")
    private CrigttJaxbMarshaller schematronSvrlJaxbMarshaller;

    @Resource(name = "validatorCacheServiceImpl")
    private ValidatorCacheService cacheService;

    private Digester digester;
    private Map<String, ValidatorLevel> phaseLevels;
    private ValidatorSchematron[] schematrons;

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public ValidatorReport validate(ValidatorSubmission submission) throws Exception {
        ValidatorReport report = new ValidatorReportImpl();

        CrigttFunctionUtils.consume(() -> Instant.now().getMillis(), submission::setSubmittedTimestamp, report::setSubmittedTimestamp);
        CrigttFunctionUtils.consume(() -> UUID.randomUUID().toString(), submission::setId, report::setId);

        ValidatorDocument docObj = submission.getDocument();
        report.setDocument(docObj);

        byte[] docContent = docObj.getContent(), docHash =
            CrigttFunctionUtils.consume(docObj::getHash, () -> this.digester.digest(docContent), docObj::setHash);
        ValidatorResults results = this.cacheService.getResults(docHash);

        if (results != null) {
            report.setProcessedTimestamp(Instant.now().getMillis());
            report.setResults(results);

            return report;
        }

        report.setResults((results = new ValidatorResultsImpl()));

        ValidatorEventTotals eventTotals = new ValidatorEventTotalsImpl();
        results.setEventTotals(eventTotals);

        List<ValidatorEvent> events = new ArrayList<>();
        results.setEvents(events);

        ByteArraySource docSrc = new ByteArraySource(docContent, docObj.getFileName());
        XdmDocument doc = this.docBuilder.build(docSrc);
        NodeInfo docElemInfo = ((ElementOverNodeInfo) doc.getDocument().getDocumentElement()).getUnderlyingNodeInfo();
        NamespaceBinding[] docElemNsBindings = docElemInfo.getDeclaredNamespaces(null);

        Map<String, String> docNamespaces = new HashMap<>(docElemNsBindings.length + 1);
        docNamespaces.put(docElemInfo.getPrefix(), docElemInfo.getURI());

        Stream.of(docElemNsBindings).forEach(docElemNsBinding -> docNamespaces.put(docElemNsBinding.getPrefix(), docElemNsBinding.getURI()));

        boolean status = true;
        Map<String, String> patternPhases;
        ValidatorSchema activeSchema;
        Map<String, ValidatorPhase> activePhases;
        Map<String, ValidatorPattern> activePatterns;
        Map<String, ValidatorRule> activeRules;
        Map<String, ValidatorAssertion> activeAssertions;
        XdmDocument staticCodeDoc;
        Pattern staticCodeDocExprPattern;
        Map<String, ValidatorValueSet> activeValueSets;
        Map<String, ValidatorCodeSystem> activeCodeSystems;
        Map<String, ValidatorCode> activeCodes;
        List<?> outputContent;
        String patternId;
        ValidatorPattern activePattern = null;
        String phaseId;
        ValidatorPhase activePhase = null;
        ValidatorLevel level = null;
        Map<ValidatorLevel, Integer> levelEventTotals =
            CrigttStreamUtils.toMap(Function.identity(), levelItem -> 0, () -> new EnumMap<>(ValidatorLevel.class), EnumSet.allOf(ValidatorLevel.class)
                .stream());
        int levelEventTotal = 0;
        FiredRule firedRule;
        ValidatorRule activeRule = null;
        String contextExpr = null;
        boolean assertionStatus;
        ValidatorAssertion activeAssertion;
        int eventTotal = 0;
        ValidatorEvent event;
        ValidatorLocation loc;
        SuccessfulReport successfulReport;
        FailedAssertion failedAssertion;
        String locExpr;
        XdmNode locNode;
        CrigttLocation locObj;

        for (ValidatorSchematron schematron : this.schematrons) {
            patternPhases = schematron.getPatternPhases();
            activeSchema = schematron.getActiveSchema();
            activePhases = schematron.getActivePhases();
            activePatterns = schematron.getActivePatterns();
            activeRules = schematron.getActiveRules();
            activeAssertions = schematron.getActiveAssertions();
            activeValueSets = schematron.getActiveValueSets();
            activeCodeSystems = schematron.getActiveCodeSystems();
            activeCodes = schematron.getActiveCodes();

            final IndependentContext xpathContext = new IndependentContext(this.xpathCompiler.getUnderlyingStaticContext());

            docNamespaces.forEach(xpathContext::declareNamespace);

            CrigttStreamUtils.instances(
                (outputContent = this.schematronSvrlJaxbMarshaller.unmarshal(schematron.transform(docSrc).getSource(), Output.class).getContent()).stream(),
                AttributeValueNamespace.class).forEach(attrValueNs -> xpathContext.declareNamespace(attrValueNs.getPrefix(), attrValueNs.getUri()));

            staticCodeDocExprPattern =
                java.util.regex.Pattern.compile(String.format(
                    STATIC_CODE_DOC_EXPR_PATTERN_FORMAT,
                    (staticCodeDoc = schematron.getStaticCodeDocument()).getUri().toString(),
                    CrigttStreamUtils.instances(outputContent.stream(), AttributeValueNamespace.class)
                        .filter(attrValueNs -> attrValueNs.getUri().equals(CrigttXmlNs.STATIC_CODE_URI)).findFirst().get().getPrefix()));

            for (Object outputContentItem : outputContent) {
                if (outputContentItem instanceof ActivePattern) {
                    activePattern = activePatterns.get((patternId = ((ActivePattern) outputContentItem).getId()));

                    activePhase = activePhases.get((phaseId = patternPhases.get(patternId)));

                    levelEventTotal = levelEventTotals.get((level = this.phaseLevels.get(phaseId)));
                } else if (outputContentItem instanceof FiredRule) {
                    activeRule = activeRules.get((firedRule = ((FiredRule) outputContentItem)).getId());

                    contextExpr = firedRule.getContext();
                } else if ((assertionStatus = (outputContentItem instanceof SuccessfulReport)) || (outputContentItem instanceof FailedAssertion)) {
                    activeAssertion = activeAssertions.get(((IdentifiedBean) outputContentItem).getId());

                    events.add((event = new ValidatorEventImpl()));
                    event.setId(Integer.toString(++eventTotal));
                    event.setStatus(assertionStatus);
                    event.setSchema(activeSchema);
                    event.setPhase(activePhase);
                    event.setPattern(activePattern);
                    event.setRule(activeRule);
                    event.setAssertion(activeAssertion);
                    event.setLevel(level);
                    event.setLocation((loc = new ValidatorLocationImpl()));
                    event.setContextExpression(contextExpr);

                    if (assertionStatus) {
                        event.setDescription((successfulReport = ((SuccessfulReport) outputContentItem)).getText());
                        event.setTestExpression(successfulReport.getTest());

                        loc.setNodeExpression((locExpr = successfulReport.getLocation()));
                    } else {
                        levelEventTotal++;

                        event.setDescription((failedAssertion = ((FailedAssertion) outputContentItem)).getText());
                        event.setTestExpression(failedAssertion.getTest());

                        loc.setNodeExpression((locExpr = failedAssertion.getLocation()));
                    }

                    this.validateStaticCodes(activeValueSets, activeCodeSystems, activeCodes, staticCodeDoc, staticCodeDocExprPattern, xpathContext, event);

                    if ((locNode = this.xpathCompiler.evaluateNode(locExpr, xpathContext, doc)) != null) {
                        loc.setColumnNumber((locObj = new CrigttLocation(locNode.getUnderlyingNode())).getColumnNumber());
                        loc.setLineNumber(locObj.getLineNumber());
                    }

                    status &= assertionStatus;

                    levelEventTotals.put(level, levelEventTotal);
                }
            }
        }

        eventTotals.setAll(eventTotal);
        eventTotals.setInfo(levelEventTotals.get(ValidatorLevel.INFO));
        eventTotals.setWarn(levelEventTotals.get(ValidatorLevel.WARN));
        eventTotals.setError(levelEventTotals.get(ValidatorLevel.ERROR));

        results.setStatus(status);

        this.cacheService.putResults(docHash, results);

        report.setProcessedTimestamp(Instant.now().getMillis());

        return report;
    }

    private void validateStaticCodes(Map<String, ValidatorValueSet> activeValueSets, Map<String, ValidatorCodeSystem> activeCodeSystems,
        Map<String, ValidatorCode> activeCodes, XdmDocument staticCodeDoc, Pattern staticCodeDocExprPattern, IndependentContext xpathContext,
        ValidatorEvent event) throws Exception {
        Matcher staticCodeDocExprMatcher = staticCodeDocExprPattern.matcher(event.getTestExpression());

        if (!staticCodeDocExprMatcher.matches()) {
            return;
        }

        XdmNode valueSetNode = this.xpathCompiler.evaluateNode(staticCodeDocExprMatcher.group(2), xpathContext, staticCodeDoc);

        if (valueSetNode == null) {
            return;
        }

        ElementOverNodeInfo valueSetElem = ((ElementOverNodeInfo) NodeOverNodeInfo.wrap(valueSetNode.getUnderlyingNode()));

        event.setValueSet(activeValueSets.get(valueSetElem.getAttribute(ValidatorStaticCodeXmlNames.VALUE_SET_OID_ATTR_NAME)));
    }

    @Override
    public Digester getDigester() {
        return this.digester;
    }

    @Override
    public void setDigester(Digester digester) {
        this.digester = digester;
    }

    @Override
    public Map<String, ValidatorLevel> getPhaseLevels() {
        return this.phaseLevels;
    }

    @Override
    public void setPhaseLevels(Map<String, ValidatorLevel> phaseLevels) {
        this.phaseLevels = phaseLevels;
    }

    @Override
    public ValidatorSchematron[] getSchematrons() {
        return this.schematrons;
    }

    @Override
    public void setSchematrons(ValidatorSchematron ... schematrons) {
        this.schematrons = schematrons;
    }
}
