package gov.hhs.onc.crigtt.validate.vocab.impl;

import gov.hhs.onc.crigtt.transform.CrigttContextDataNames;
import gov.hhs.onc.crigtt.transform.impl.AbstractCrigttExtensionFunction;
import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.validate.ValidatorSchematron;
import gov.hhs.onc.crigtt.validate.vocab.Code;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertion;
import gov.hhs.onc.crigtt.validate.vocab.VocabService;
import gov.hhs.onc.crigtt.validate.vocab.VocabSet;
import gov.hhs.onc.crigtt.validate.vocab.VocabTarget;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmItem;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.sxpath.IndependentContext;
import net.sf.saxon.value.SequenceType;
import org.apache.commons.collections4.keyvalue.MultiKey;
import org.springframework.beans.factory.InitializingBean;

public abstract class AbstractVocabFunction extends AbstractCrigttExtensionFunction implements InitializingBean {
    @Resource(name = "xpathCompilerCrigtt")
    protected CrigttXpathCompiler xpathCompiler;

    protected IndependentContext xpathContext;

    protected AbstractVocabFunction(StructuredQName name) {
        super(name, SequenceType.SINGLE_BOOLEAN, SequenceType.SINGLE_STRING, SequenceType.SINGLE_STRING);
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        (this.xpathContext = new IndependentContext(this.xpathCompiler.getUnderlyingStaticContext())).declareNamespace(CrigttXmlNs.HL7_CDA_PREFIX,
            CrigttXmlNs.HL7_CDA_URI);
        this.xpathContext.declareNamespace(CrigttXmlNs.HL7_SDTC_PREFIX, CrigttXmlNs.HL7_SDTC_URI);
    }

    @Override
    protected XdmValue call(XPathContext context, Map<Object, Object> contextData, XdmValue[] args) throws Exception {
        XdmItem contextItem = CrigttXpathUtils.wrapItem(context.getContextItem());
        String patternId = CrigttXpathUtils.getStringValue(args[0]), assertionId = CrigttXpathUtils.getStringValue(args[1]), vocabContextExpr, valueSetId, codeSystemId, codeId, codeName;
        VocabService service =
            ((ValidatorSchematron) contextData.get(CrigttContextDataNames.VALIDATE_SCHEMATRON_NAME)).getActiveVocabServices().get(assertionId);
        VocabAssertion assertion = service.getAssertions().get(assertionId);

        List<VocabSet> expectedVocabSets = assertion.getExpectedVocabSets();

        contextData.put(new MultiKey<>(patternId, assertionId, CrigttContextDataNames.VALIDATE_VOCAB_VOCAB_SETS_EXPECTED_NAME), new ArrayList<>(
            expectedVocabSets));

        List<String> messages = new ArrayList<>();

        contextData.put(new MultiKey<>(patternId, assertionId, CrigttContextDataNames.VALIDATE_VOCAB_MESSAGES_NAME), messages);

        if (assertion.isSetVocabContextExpression()
            && ((contextItem = this.xpathCompiler.evaluateNode((vocabContextExpr = assertion.getVocabContextExpression()), this.xpathContext, contextItem)) == null)) {
            messages.add(String.format("Vocabulary context XPath expression evaluated to an empty set: %s", vocabContextExpr));

            return new XdmAtomicValue(assertion.getOptional());
        }

        VocabSet expectedVocabSet, vocabSet =
            new VocabSetImpl(null, new ValueSetImpl((valueSetId =
                this.xpathCompiler.evaluateString(assertion.getValueSetIdExpression(), this.xpathContext, contextItem)), this.xpathCompiler.evaluateString(
                assertion.getValueSetNameExpression(), this.xpathContext, contextItem), this.xpathCompiler.evaluateString(
                assertion.getValueSetVersionExpression(), this.xpathContext, contextItem)), new CodeSystemImpl((codeSystemId =
                this.xpathCompiler.evaluateString(assertion.getCodeSystemIdExpression(), this.xpathContext, contextItem)), this.xpathCompiler.evaluateString(
                assertion.getCodeSystemNameExpression(), this.xpathContext, contextItem), this.xpathCompiler.evaluateString(
                assertion.getCodeSystemVersionExpression(), this.xpathContext, contextItem)));

        contextData.put(new MultiKey<>(patternId, assertionId, CrigttContextDataNames.VALIDATE_VOCAB_VOCAB_SET_NAME), vocabSet);

        Code code =
            new CodeImpl((codeId = this.xpathCompiler.evaluateString(assertion.getCodeIdExpression(), this.xpathContext, contextItem)), (codeName =
                this.xpathCompiler.evaluateString(assertion.getCodeNameExpression(), this.xpathContext, contextItem)));

        contextData.put(new MultiKey<>(patternId, assertionId, CrigttContextDataNames.VALIDATE_VOCAB_CODE_NAME), code);

        boolean status = true, valueSetIdAvailable = (valueSetId != null), valueSetFallback = assertion.getValueSetFallback(), codeSystemIdAvailable =
            (codeSystemId != null), codeSystemFallback = assertion.getCodeSystemFallback(), codeIdAvailable = (codeId != null), codeNameAvailable =
            (codeName != null);

        if (codeId == null) {
            messages.add("Code was not specified.");

            status = false;
        }

        VocabTarget target = assertion.getTarget();

        if ((target == VocabTarget.CODE_NAME) && !codeNameAvailable) {
            messages.add("Code display name was not specified.");

            status = false;
        }

        // noinspection ConstantConditions
        if ((valueSetIdAvailable || valueSetFallback || codeSystemIdAvailable || codeSystemFallback)
            && codeIdAvailable
            && ((expectedVocabSet =
                expectedVocabSets
                    .stream()
                    .filter(
                        expectedVocabSetSearch -> ((!valueSetIdAvailable || expectedVocabSetSearch.getValueSet().getId().equals(valueSetId)) && ((!codeSystemIdAvailable || expectedVocabSetSearch
                            .getCodeSystem().getId().equals(codeSystemId))))).findFirst().orElse(null)) != null)) {
            if (expectedVocabSet.isSetValueSet() && !valueSetIdAvailable && !valueSetFallback) {
                messages.add("Value set OID was not specified.");
            }

            if (expectedVocabSet.isSetCodeSystem() && !codeSystemIdAvailable && !codeSystemFallback) {
                messages.add("Code system OID was not specified.");

                status = false;
            }

            List<Code> foundCodes =
                service.findCodes(((assertion.getGroupingValueSetFallback() && expectedVocabSet.isSetGroupingValueSet()) ? expectedVocabSet
                    .getGroupingValueSet().getId() : null), ((!valueSetIdAvailable && valueSetFallback) ? expectedVocabSet.getValueSet().getId() : valueSetId),
                    ((!codeSystemIdAvailable && codeSystemFallback) ? expectedVocabSet.getCodeSystem().getId() : codeSystemId), codeId);

            if (target == VocabTarget.CODE_ID) {
                status &= !foundCodes.isEmpty();
            } else if (codeNameAvailable && !foundCodes.stream().anyMatch(foundCode -> codeName.equals(foundCode.getName()))) {
                messages.add(String.format("Code display name did not match any of %d possible values.", foundCodes.size()));

                status = false;
            }
        } else {
            status = false;
        }

        return new XdmAtomicValue((status || assertion.getOptional()));
    }
}
