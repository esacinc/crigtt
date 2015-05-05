package gov.hhs.onc.crigtt.validate.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.api.schematron.Assertion;
import gov.hhs.onc.crigtt.api.schematron.Pattern;
import gov.hhs.onc.crigtt.api.schematron.Phase;
import gov.hhs.onc.crigtt.api.schematron.Rule;
import gov.hhs.onc.crigtt.api.schematron.svrl.FailedAssertion;
import gov.hhs.onc.crigtt.api.schematron.svrl.Output;
import gov.hhs.onc.crigtt.api.schematron.svrl.SuccessfulReport;
import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.validate.CrigttSchematron;
import gov.hhs.onc.crigtt.validate.SchematronValidationEvent;
import gov.hhs.onc.crigtt.validate.SchematronValidationRequest;
import gov.hhs.onc.crigtt.validate.SchematronValidationResponse;
import gov.hhs.onc.crigtt.validate.SchematronValidator;
import gov.hhs.onc.crigtt.validate.ValidationEventLevel;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.annotation.Resource;
import net.sf.saxon.event.CommentStripper;
import net.sf.saxon.event.ProxyReceiver;
import net.sf.saxon.event.Receiver;
import net.sf.saxon.expr.parser.ExpressionLocation;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.om.NodeName;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.sxpath.IndependentContext;
import net.sf.saxon.trans.XPathException;
import net.sf.saxon.type.SimpleType;

public class SchematronValidatorImpl extends AbstractCrigttValidator<SchematronValidationRequest, SchematronValidationResponse> implements SchematronValidator {
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

    @Resource(name = "xpathCompilerBase")
    private CrigttXpathCompiler xpathCompiler;

    @Resource(name = "jaxbMarshallerSchematronSvrl")
    private CrigttJaxbMarshaller schematronSvrlJaxbMarshaller;

    private Map<String, ValidationEventLevel> phaseLevels;
    private CrigttSchematron schematron;

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public SchematronValidationResponse validate(SchematronValidationRequest req) {
        SchematronValidationResponse resp = new SchematronValidationResponseImpl(this.schematron);
        boolean respSuccess = true;
        XdmDocument reqDoc = req.getDocument();
        Map<String, String> reqNamespaces = req.getNamespaces();

        try {
            XdmDocument respDoc = this.schematron.transform(reqDoc.getUnderlyingNode(), DocumentAttributeStripper::new, CommentStripper::new);

            resp.setDocument(respDoc);

            Output respOut = this.schematronSvrlJaxbMarshaller.unmarshal(respDoc.getSource(), Output.class);
            resp.setOutput(respOut);

            IndependentContext xpathContext = new IndependentContext(this.xpathCompiler.getUnderlyingStaticContext());

            reqNamespaces.forEach(xpathContext::declareNamespace);

            respOut.getNsPrefixInAttributeValues().stream()
                .forEach(attrValueNs -> xpathContext.declareNamespace(attrValueNs.getPrefix(), attrValueNs.getUri()));

            Map<String, FailedAssertion> respFailedAssertions =
                respOut
                    .getFailedAssert()
                    .stream()
                    .collect(
                        Collectors.toMap(FailedAssertion::getId, Function.<FailedAssertion> identity(),
                            (respFailedAssertion1, respFailedAssertion2) -> respFailedAssertion2, LinkedHashMap::new));
            Map<String, SuccessfulReport> respSuccessfulReports =
                respOut
                    .getSuccessfulReport()
                    .stream()
                    .collect(
                        Collectors.toMap(SuccessfulReport::getId, Function.<SuccessfulReport> identity(),
                            (respSuccessfulReport1, respSuccessfulReport2) -> respSuccessfulReport2, LinkedHashMap::new));

            List<SchematronValidationEvent> respEvents = new ArrayList<>();
            Map<String, Phase> phases = this.schematron.getPhases();
            Map<String, List<Pattern>> activePatterns = this.schematron.getActivePatterns();
            Map<String, List<Rule>> activeRules = this.schematron.getActiveRules();
            Map<String, List<Assertion>> activeAssertions = this.schematron.getActiveAssertions();
            Phase phase;
            ValidationEventLevel phaseLevel;
            String assertionId;
            SchematronValidationEvent respEvent;
            String respAssertionLocExpr;
            XdmNode respAssertionLocNode;
            NodeInfo respAssertionLocNodeInfo;

            for (String phaseId : phases.keySet()) {
                phase = phases.get(phaseId);
                phaseLevel = this.phaseLevels.get(phaseId);

                for (Pattern activePattern : activePatterns.get(phaseId)) {
                    for (Rule activeRule : activeRules.get(activePattern.getId())) {
                        for (Assertion activeAssertion : activeAssertions.get(activeRule.getId())) {
                            (respEvent = new SchematronValidationEventImpl()).setPhase(phase);
                            respEvent.setPattern(activePattern);
                            respEvent.setRule(activeRule);
                            respEvent.setAssertion(activeAssertion);

                            if (respFailedAssertions.containsKey((assertionId = activeAssertion.getId()))) {
                                respSuccess = false;

                                respEvent.setLevel(phaseLevel);

                                respAssertionLocExpr = respFailedAssertions.get(assertionId).getLocation();
                            } else {
                                respEvent.setLevel(ValidationEventLevel.INFO);

                                respAssertionLocExpr = respSuccessfulReports.get(assertionId).getLocation();
                            }

                            if (((respAssertionLocNode = this.xpathCompiler.evaluateNode(respAssertionLocExpr, xpathContext, reqDoc)) != null)) {
                                respEvent.setLocation(new ExpressionLocation((respAssertionLocNodeInfo = respAssertionLocNode.getUnderlyingNode())
                                    .getSystemId(), respAssertionLocNodeInfo.getLineNumber(), respAssertionLocNodeInfo.getColumnNumber()));
                            }

                            respEvents.add(respEvent);
                        }
                    }
                }
            }

            resp.setEvents(respEvents);
        } catch (Exception e) {
            respSuccess = false;

            resp.setException(e);
        }

        resp.setSuccess(respSuccess);

        return resp;
    }

    @Override
    public Map<String, ValidationEventLevel> getPhaseLevels() {
        return this.phaseLevels;
    }

    @Override
    public void setPhaseLevels(Map<String, ValidationEventLevel> phaseLevels) {
        this.phaseLevels = phaseLevels;
    }

    @Override
    public CrigttSchematron getSchematron() {
        return this.schematron;
    }

    @Override
    public void setSchematron(CrigttSchematron schematron) {
        this.schematron = schematron;
    }
}
