package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.transform.impl.AbstractCrigttExtensionFunction;
import gov.hhs.onc.crigtt.validate.ValidatorCode;
import gov.hhs.onc.crigtt.validate.ValidatorCodeSystem;
import gov.hhs.onc.crigtt.validate.ValidatorSchematron;
import gov.hhs.onc.crigtt.validate.ValidatorValueSet;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmEmptySequence;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.value.SequenceType;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.collections4.keyvalue.MultiKey;

public class ValidatorStaticVocabFunction extends AbstractCrigttExtensionFunction {
    public final static StructuredQName NAME = new QName(CrigttXmlNs.VALIDATE_PREFIX, CrigttXmlNs.VALIDATE_URI, "static-vocab").getStructuredQName();

    public ValidatorStaticVocabFunction(Supplier<Map<Object, Object>> contextDataSupplier) {
        super(contextDataSupplier, NAME, SequenceType.STRING_SEQUENCE, SequenceType.SINGLE_STRING, SequenceType.SINGLE_STRING, SequenceType.SINGLE_STRING,
            SequenceType.OPTIONAL_STRING, SequenceType.OPTIONAL_STRING);
    }

    @Override
    protected XdmValue call(XPathContext context, Map<Object, Object> contextData, XdmValue[] args) throws Exception {
        ValidatorSchematron schematron = ((ValidatorSchematron) contextData.get(ValidatorSchematron.class.getName()));

        if (schematron == null) {
            return XdmEmptySequence.getInstance();
        }

        Map<String, ValidatorValueSet> activeValueSets = schematron.getActiveValueSets();
        Map<String, ValidatorCodeSystem> activeCodeSystems = schematron.getActiveCodeSystems();
        Map<String, ValidatorCode> activeCodes = schematron.getActiveCodes();
        Map<String, List<String>> valueSetCodes = schematron.getValueSetCodes();
        String patternId = args[0].getUnderlyingValue().head().getStringValue(), assertionId = args[1].getUnderlyingValue().head().getStringValue();

        String valueSetId = args[2].getUnderlyingValue().head().getStringValue();

        if (activeValueSets.containsKey(valueSetId)) {
            contextData.put(new MultiKey<>(patternId, assertionId, ValidatorValueSet.class.getName()), activeValueSets.get(valueSetId));
        }

        XdmValue codeSystemValue = args[3];

        if ((codeSystemValue != null) && (codeSystemValue.size() >= 1)) {
            String codeSystemId = codeSystemValue.getUnderlyingValue().head().getStringValue();

            if (activeCodeSystems.containsKey(codeSystemId)) {
                contextData.put(new MultiKey<>(patternId, assertionId, ValidatorCodeSystem.class.getName()), activeCodeSystems.get(codeSystemId));
            }
        }

        XdmValue codeValue = args[4];

        if ((codeValue != null) && (codeValue.size() >= 1)) {
            String codeId = codeValue.getUnderlyingValue().head().getStringValue();

            if (activeCodes.containsKey(codeId)) {
                contextData.put(new MultiKey<>(patternId, assertionId, ValidatorCode.class.getName()), activeCodes.get(codeId));

                if (valueSetCodes.containsKey(valueSetId)) {
                    return new XdmValue(IteratorUtils.asIterable(valueSetCodes.get(valueSetId).stream().map(XdmAtomicValue::new).iterator()));
                }
            }
        }

        return XdmEmptySequence.getInstance();
    }
}
