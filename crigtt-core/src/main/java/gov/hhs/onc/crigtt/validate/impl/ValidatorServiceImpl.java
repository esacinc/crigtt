package gov.hhs.onc.crigtt.validate.impl;

import br.net.woodstock.rockframework.security.digest.Digester;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.schematron.svrl.AttributeValueNamespace;
import gov.hhs.onc.crigtt.schematron.svrl.FailedAssertion;
import gov.hhs.onc.crigtt.schematron.svrl.Output;
import gov.hhs.onc.crigtt.schematron.svrl.SuccessfulReport;
import gov.hhs.onc.crigtt.transform.impl.CrigttDocumentBuilder;
import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.utils.CrigttFunctionUtils;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.ValidatorAssertion;
import gov.hhs.onc.crigtt.validate.ValidatorCacheService;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorEventLevel;
import gov.hhs.onc.crigtt.validate.ValidatorEventTotals;
import gov.hhs.onc.crigtt.validate.ValidatorPattern;
import gov.hhs.onc.crigtt.validate.ValidatorPhase;
import gov.hhs.onc.crigtt.validate.ValidatorReport;
import gov.hhs.onc.crigtt.validate.ValidatorResults;
import gov.hhs.onc.crigtt.validate.ValidatorRule;
import gov.hhs.onc.crigtt.validate.ValidatorSchema;
import gov.hhs.onc.crigtt.validate.ValidatorSchematron;
import gov.hhs.onc.crigtt.validate.ValidatorService;
import gov.hhs.onc.crigtt.validate.ValidatorSubmission;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.function.Function;
import java.util.stream.Stream;
import javax.annotation.Resource;
import javax.xml.transform.Source;
import net.sf.saxon.dom.ElementOverNodeInfo;
import net.sf.saxon.event.CommentStripper;
import net.sf.saxon.event.ProxyReceiver;
import net.sf.saxon.event.Receiver;
import net.sf.saxon.lib.AugmentedSource;
import net.sf.saxon.om.NamespaceBinding;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.om.NodeName;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.sxpath.IndependentContext;
import net.sf.saxon.trans.XPathException;
import net.sf.saxon.type.SimpleType;
import org.joda.time.Instant;

public class ValidatorServiceImpl implements ValidatorService {
    private static class DocumentAttributeStripper extends ProxyReceiver {
        private final static String DOC_ATTR_LOCAL_NAME = "document";

        public DocumentAttributeStripper(Receiver next) {
            super(next);
        }

        @Override
        public void attribute(NodeName name, SimpleType type, CharSequence value, int locId, int props) throws XPathException {
            if (!name.getLocalPart().equals(DOC_ATTR_LOCAL_NAME)) {
                super.attribute(name, type, value, locId, props);
            }
        }
    }

    @Resource(name = "docBuilderBase")
    private CrigttDocumentBuilder docBuilder;

    @Resource(name = "xpathCompilerBase")
    private CrigttXpathCompiler xpathCompiler;

    @Resource(name = "jaxbMarshallerSchematronSvrl")
    private CrigttJaxbMarshaller schematronSvrlJaxbMarshaller;

    @Resource(name = "validatorCacheServiceImpl")
    private ValidatorCacheService cacheService;

    private Digester digester;
    private Map<String, ValidatorEventLevel> phaseLevels;
    private ValidatorSchematron[] schematrons;

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public ValidatorReport validate(ValidatorSubmission submission) throws Exception {
        ValidatorReport report = new ValidatorReportImpl();

        CrigttFunctionUtils.consume(() -> Instant.now().getMillis(), submission::setSubmittedTimestamp,
            report::setSubmittedTimestamp);
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
        ValidatorSchema activeSchema;
        List<ValidatorPhase> activePhases;
        Map<String, List<ValidatorPattern>> activePatterns;
        Map<String, List<ValidatorRule>> activeRules;
        Map<String, List<ValidatorAssertion>> activeAssertions;
        List<?> outputContent;
        Map<String, FailedAssertion> failedAssertions;
        Map<String, SuccessfulReport> successfulReports;
        String activePhaseId;
        ValidatorEventLevel eventLevel;
        Map<ValidatorEventLevel, Integer> eventLevelTotals =
            CrigttStreamUtils.toMap(Function.identity(), eventLevelItem -> 0, () -> new EnumMap<>(ValidatorEventLevel.class),
                EnumSet.allOf(ValidatorEventLevel.class).stream());
        int eventLevelTotal;
        int eventTotal = 0;
        ValidatorEvent event;
        String activeAssertionId;
        String assertionLocExpr = null;
        XdmNode assertionLocNode;

        for (ValidatorSchematron schematron : this.schematrons) {
            activeSchema = schematron.getActiveSchema();
            activePhases = schematron.getActivePhases();
            activePatterns = schematron.getActivePatterns();
            activeRules = schematron.getActiveRules();
            activeAssertions = schematron.getActiveAssertions();

            final IndependentContext xpathContext = new IndependentContext(this.xpathCompiler.getUnderlyingStaticContext());

            docNamespaces.forEach(xpathContext::declareNamespace);

            CrigttStreamUtils
                .instances(
                    (outputContent =
                        this.schematronSvrlJaxbMarshaller.unmarshal(schematron.transform(augmentDocumentSource(docSrc)).getSource(), Output.class).getContent())
                        .stream(), AttributeValueNamespace.class).forEach(
                    attrValueNs -> xpathContext.declareNamespace(attrValueNs.getPrefix(), attrValueNs.getUri()));

            failedAssertions =
                CrigttStreamUtils.toMap(FailedAssertion::getId, Function.<FailedAssertion> identity(), LinkedHashMap::new,
                    CrigttStreamUtils.instances(outputContent.stream(), FailedAssertion.class));

            successfulReports =
                CrigttStreamUtils.toMap(SuccessfulReport::getId, Function.<SuccessfulReport> identity(), LinkedHashMap::new,
                    CrigttStreamUtils.instances(outputContent.stream(), SuccessfulReport.class));

            for (ValidatorPhase activePhase : activePhases) {
                eventLevelTotal = eventLevelTotals.get((eventLevel = this.phaseLevels.get((activePhaseId = activePhase.getId()))));

                for (ValidatorPattern activePattern : activePatterns.get(activePhaseId)) {
                    for (ValidatorRule activeRule : activeRules.get(activePattern.getId())) {
                        for (ValidatorAssertion activeAssertion : activeAssertions.get(activeRule.getId())) {
                            events.add((event = new ValidatorEventImpl()));
                            event.setId(Integer.toString(++eventTotal));
                            event.setSchema(activeSchema);
                            event.setPhase(activePhase);
                            event.setPattern(activePattern);
                            event.setRule(activeRule);
                            event.setAssertion(activeAssertion);
                            event.setLevel(eventLevel);

                            if (failedAssertions.containsKey((activeAssertionId = activeAssertion.getId()))) {
                                status = false;

                                eventLevelTotal++;

                                assertionLocExpr = failedAssertions.get(activeAssertionId).getLocation();
                            } else if (successfulReports.containsKey(activeAssertionId)) {
                                event.setStatus(true);

                                assertionLocExpr = successfulReports.get(activeAssertionId).getLocation();
                            }

                            if ((assertionLocExpr != null)
                                && ((assertionLocNode = this.xpathCompiler.evaluateNode(assertionLocExpr, xpathContext, doc)) != null)) {
                                event.setLocation(new CrigttLocation(assertionLocNode.getUnderlyingNode()));
                            }
                        }
                    }
                }

                eventLevelTotals.put(eventLevel, eventLevelTotal);
            }
        }

        eventTotals.setAll(eventTotal);
        eventTotals.setInfo(eventLevelTotals.get(ValidatorEventLevel.INFO));
        eventTotals.setWarn(eventLevelTotals.get(ValidatorEventLevel.WARN));
        eventTotals.setError(eventLevelTotals.get(ValidatorEventLevel.ERROR));

        results.setStatus(status);

        this.cacheService.putResults(docHash, results);

        report.setProcessedTimestamp(Instant.now().getMillis());

        return report;
    }

    private static AugmentedSource augmentDocumentSource(Source docSrc) {
        AugmentedSource augmentedDocSrc = AugmentedSource.makeAugmentedSource(docSrc);
        augmentedDocSrc.addFilter(DocumentAttributeStripper::new);
        augmentedDocSrc.addFilter(CommentStripper::new);

        return augmentedDocSrc;
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
    public Map<String, ValidatorEventLevel> getPhaseLevels() {
        return this.phaseLevels;
    }

    @Override
    public void setPhaseLevels(Map<String, ValidatorEventLevel> phaseLevels) {
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
