package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedAssert;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPhase;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import gov.hhs.onc.crigtt.api.schematron.svrl.FailedAssert;
import gov.hhs.onc.crigtt.api.schematron.svrl.SchematronOutput;
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
import net.sf.saxon.expr.parser.ExpressionLocation;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.sxpath.IndependentContext;

public class SchematronValidatorImpl extends AbstractCrigttValidator<SchematronValidationRequest, SchematronValidationResponse> implements SchematronValidator {
    @Resource(name = "xpathCompilerBase")
    private CrigttXpathCompiler xpathCompiler;

    @Resource(name = "jaxbMarshallerSchematronSvrl")
    private CrigttJaxbMarshaller schematronSvrlJaxbMarshaller;

    private Map<String, ValidationEventLevel> phaseLevels;
    private CrigttSchematron schematron;

    @Override
    public SchematronValidationResponse validate(SchematronValidationRequest req) {
        SchematronValidationResponse resp = new SchematronValidationResponseImpl(this.schematron);
        boolean respSuccess = true;
        XdmDocument reqDoc = req.getDocument();
        Map<String, String> reqNamespaces = req.getNamespaces();

        try {
            XdmDocument respDoc = this.schematron.transform(reqDoc.getUnderlyingNode());
            resp.setDocument(respDoc);

            SchematronOutput respOut = this.schematronSvrlJaxbMarshaller.unmarshal(respDoc.getSource(), SchematronOutput.class);
            resp.setOutput(respOut);

            IndependentContext xpathContext = new IndependentContext(this.xpathCompiler.getUnderlyingStaticContext());

            reqNamespaces.forEach(xpathContext::declareNamespace);

            respOut.getNsPrefixInAttributeValues().stream()
                .forEach(attrValueNsPrefix -> xpathContext.declareNamespace(attrValueNsPrefix.getPrefix(), attrValueNsPrefix.getUri()));

            Map<String, FailedAssert> respFailedAsserts =
                respOut
                    .getFailedAssert()
                    .stream()
                    .collect(
                        Collectors.toMap(FailedAssert::getId, Function.<FailedAssert> identity(), (respFailedAssert1, respFailedAssert2) -> respFailedAssert2,
                            LinkedHashMap::new));
            Map<String, SuccessfulReport> respSuccessfulReports =
                respOut
                    .getSuccessfulReport()
                    .stream()
                    .collect(
                        Collectors.toMap(SuccessfulReport::getId, Function.<SuccessfulReport> identity(),
                            (respSuccessfulReport1, respSuccessfulReport2) -> respSuccessfulReport2, LinkedHashMap::new));

            List<SchematronValidationEvent> respEvents = new ArrayList<>();
            Map<String, ResolvedPhase> phases = this.schematron.getResolvedPhases();
            ValidationEventLevel phaseLevel;
            String assertId;
            SchematronValidationEvent respEvent;
            String respAssertLocExpr;
            XdmNode respAssertLocNode;
            NodeInfo respAssertLocNodeInfo;

            for (String phaseId : phases.keySet()) {
                phaseLevel = this.phaseLevels.get(phaseId);

                for (ResolvedPattern pattern : phases.get(phaseId).getPatterns().values()) {
                    for (ResolvedRule rule : pattern.getRules().values()) {
                        for (ResolvedAssert azzert : rule.getAsserts().values()) {
                            (respEvent = new SchematronValidationEventImpl()).setPattern(pattern);
                            respEvent.setRule(rule);
                            respEvent.setAssert(azzert);

                            if (respFailedAsserts.containsKey((assertId = azzert.getId()))) {
                                respSuccess = false;

                                respEvent.setLevel(phaseLevel);

                                respAssertLocExpr = respFailedAsserts.get(assertId).getLocation();
                            } else {
                                respEvent.setLevel(ValidationEventLevel.INFO);

                                respAssertLocExpr = respSuccessfulReports.get(assertId).getLocation();
                            }

                            if (((respAssertLocNode = this.xpathCompiler.evaluateNode(respAssertLocExpr, xpathContext, reqDoc)) != null)) {
                                respEvent.setLocation(new ExpressionLocation((respAssertLocNodeInfo = respAssertLocNode.getUnderlyingNode()).getSystemId(),
                                    respAssertLocNodeInfo.getLineNumber(), respAssertLocNodeInfo.getColumnNumber()));
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
