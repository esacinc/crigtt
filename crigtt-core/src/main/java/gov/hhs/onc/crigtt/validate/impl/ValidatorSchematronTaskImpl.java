package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.schematron.svrl.ActivePattern;
import gov.hhs.onc.crigtt.schematron.svrl.AttributeValueNamespace;
import gov.hhs.onc.crigtt.schematron.svrl.FailedAssertion;
import gov.hhs.onc.crigtt.schematron.svrl.FiredRule;
import gov.hhs.onc.crigtt.schematron.svrl.Output;
import gov.hhs.onc.crigtt.schematron.svrl.SuccessfulReport;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.ValidatorAssertion;
import gov.hhs.onc.crigtt.validate.ValidatorCode;
import gov.hhs.onc.crigtt.validate.ValidatorCodeSystem;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorLevel;
import gov.hhs.onc.crigtt.validate.ValidatorLocation;
import gov.hhs.onc.crigtt.validate.ValidatorPattern;
import gov.hhs.onc.crigtt.validate.ValidatorPhase;
import gov.hhs.onc.crigtt.validate.ValidatorRule;
import gov.hhs.onc.crigtt.validate.ValidatorSchema;
import gov.hhs.onc.crigtt.validate.ValidatorSchematron;
import gov.hhs.onc.crigtt.validate.ValidatorSchematronTask;
import gov.hhs.onc.crigtt.validate.ValidatorValueSet;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import net.sf.saxon.s9api.XdmNode;
import org.apache.commons.collections4.keyvalue.MultiKey;

public class ValidatorSchematronTaskImpl extends AbstractValidatorTask implements ValidatorSchematronTask {
    @Resource(name = "jaxbMarshallerSchematronSvrl")
    private CrigttJaxbMarshaller schematronSvrlJaxbMarshaller;

    private Map<String, ValidatorLevel> phaseLevels;
    private ValidatorSchematron schematron;

    public ValidatorSchematronTaskImpl(XdmDocument doc, ByteArraySource docSrc, String docFileName, Map<String, String> docNamespaces) {
        super(doc, docSrc, docFileName, docNamespaces);
    }

    @Override
    public List<ValidatorEvent> call() throws Exception {
        Map<String, String> patternPhases = this.schematron.getPatternPhases();
        ValidatorSchema activeSchema = this.schematron.getActiveSchema();
        Map<String, ValidatorPhase> activePhases = this.schematron.getActivePhases();
        Map<String, ValidatorPattern> activePatterns = this.schematron.getActivePatterns();
        Map<String, ValidatorRule> activeRules = this.schematron.getActiveRules();
        Map<String, String> initTestExprs = this.schematron.getInitialTestExpressions();
        Map<String, ValidatorAssertion> activeAssertions = this.schematron.getActiveAssertions();
        List<ValidatorEvent> events = new ArrayList<>(activeAssertions.size());
        List<?> outputContent;
        String patternId = null;
        ValidatorPattern activePattern = null;
        String phaseId;
        ValidatorPhase activePhase = null;
        ValidatorLevel level = null;
        FiredRule firedRule;
        ValidatorRule activeRule = null;
        String contextExpr = null;
        boolean assertionStatus;
        ValidatorAssertion activeAssertion;
        String assertionId;
        ValidatorEvent event;
        ValidatorLocation loc;
        SuccessfulReport successfulReport;
        FailedAssertion failedAssertion;
        String locExpr;
        XdmNode locNode;
        CrigttLocation locObj;

        Map<Object, Object> contextData = new HashMap<>();
        contextData.put(ValidatorSchematron.class.getName(), this.schematron);

        CrigttStreamUtils
            .instances(
                (outputContent =
                    this.schematronSvrlJaxbMarshaller.unmarshal(this.schematron.transform(docSrc, contextData).getSource(), Output.class).getContent())
                    .stream(),
                AttributeValueNamespace.class).forEach(attrValueNs -> this.xpathContext.declareNamespace(attrValueNs.getPrefix(), attrValueNs.getUri()));

        for (Object outputContentItem : outputContent) {
            if (outputContentItem instanceof ActivePattern) {
                activePattern = activePatterns.get((patternId = ((ActivePattern) outputContentItem).getId()));

                activePhase = activePhases.get((phaseId = patternPhases.get(patternId)));

                level = this.phaseLevels.get(phaseId);
            } else if (outputContentItem instanceof FiredRule) {
                activeRule = activeRules.get((firedRule = ((FiredRule) outputContentItem)).getId());

                contextExpr = firedRule.getContext();
            } else if ((assertionStatus = (outputContentItem instanceof SuccessfulReport)) || (outputContentItem instanceof FailedAssertion)) {
                activeAssertion = activeAssertions.get((assertionId = ((IdentifiedBean) outputContentItem).getId()));

                events.add((event = new ValidatorEventImpl()));
                event.setStatus(assertionStatus);
                event.setLevel(level);
                event.setLocation((loc = new ValidatorLocationImpl()));
                event.setContextExpression(contextExpr);
                event.setSchema(activeSchema);
                event.setPhase(activePhase);
                event.setPattern(activePattern);
                event.setRule(activeRule);
                event.setAssertion(activeAssertion);
                event.setValueSet(((ValidatorValueSet) contextData.get(new MultiKey<>(patternId, assertionId, ValidatorValueSet.class.getName()))));
                event.setCodeSystem(((ValidatorCodeSystem) contextData.get(new MultiKey<>(patternId, assertionId, ValidatorCodeSystem.class.getName()))));
                event.setCode(((ValidatorCode) contextData.get(new MultiKey<>(patternId, assertionId, ValidatorCode.class.getName()))));

                if (assertionStatus) {
                    event.setDescription((successfulReport = ((SuccessfulReport) outputContentItem)).getText());
                    event.setTestExpression((initTestExprs.containsKey(assertionId) ? initTestExprs.get(assertionId) : successfulReport.getTest()));

                    loc.setNodeExpression((locExpr = successfulReport.getLocation()));
                } else {
                    event.setDescription((failedAssertion = ((FailedAssertion) outputContentItem)).getText());
                    event.setTestExpression((initTestExprs.containsKey(assertionId) ? initTestExprs.get(assertionId) : failedAssertion.getTest()));

                    loc.setNodeExpression((locExpr = failedAssertion.getLocation()));
                }

                if ((locNode = this.xpathCompiler.evaluateNode(locExpr, this.xpathContext, this.doc)) != null) {
                    loc.setColumnNumber((locObj = new CrigttLocation(locNode.getUnderlyingNode())).getColumnNumber());
                    loc.setLineNumber(locObj.getLineNumber());
                }
            }
        }

        return events;
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
    public ValidatorSchematron getSchematron() {
        return this.schematron;
    }

    @Override
    public void setSchematron(ValidatorSchematron schematron) {
        this.schematron = schematron;
    }
}
