package gov.hhs.onc.crigtt.validate.vocab.impl;

import gov.hhs.onc.crigtt.transform.CrigttContextDataNames;
import gov.hhs.onc.crigtt.transform.impl.AbstractCrigttExtensionFunction;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.ValidatorCode;
import gov.hhs.onc.crigtt.validate.ValidatorCodeSystem;
import gov.hhs.onc.crigtt.validate.ValidatorSchematron;
import gov.hhs.onc.crigtt.validate.ValidatorValueSet;
import gov.hhs.onc.crigtt.validate.impl.ValidatorCodeImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorCodeSystemImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorValueSetImpl;
import gov.hhs.onc.crigtt.validate.vocab.StaticVocabService;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.value.SequenceType;
import org.apache.commons.collections4.keyvalue.MultiKey;
import org.springframework.stereotype.Component;

@Component("extFuncValidateVocabStatic")
public class StaticVocabFunction extends AbstractCrigttExtensionFunction {
    public final static StructuredQName NAME = new QName(CrigttXmlNs.VALIDATE_PREFIX, CrigttXmlNs.VALIDATE_URI, "static-vocab").getStructuredQName();

    public StaticVocabFunction() {
        super(NAME, SequenceType.SINGLE_BOOLEAN, SequenceType.SINGLE_STRING, SequenceType.SINGLE_STRING, SequenceType.SINGLE_STRING,
            SequenceType.OPTIONAL_STRING, SequenceType.OPTIONAL_STRING, SequenceType.OPTIONAL_STRING, SequenceType.SINGLE_STRING, SequenceType.OPTIONAL_STRING);
    }

    @Override
    protected XdmValue call(XPathContext context, Map<Object, Object> contextData, XdmValue[] args) throws Exception {
        StaticVocabService service = ((ValidatorSchematron) contextData.get(CrigttContextDataNames.VALIDATE_SCHEMATRON_NAME)).getStaticVocabService();
        Map<String, ValidatorValueSet> activeValueSets = service.getActiveValueSets();
        Map<MultiKey<String>, ValidatorCodeSystem> activeCodeSystems = service.getActiveCodeSystems();
        Map<MultiKey<String>, ValidatorCode> activeCodes = service.getActiveCodes();
        Map<String, Set<MultiKey<String>>> valueSetCodeSystems = service.getValueSetCodeSystems();
        Map<MultiKey<String>, Set<MultiKey<String>>> codeSystemCodes = service.getCodeSystemCodes();
        String patternId = getStringValue(args[0]), assertionId = getStringValue(args[1]), expectedValueSetId = getStringValue(args[2]), valueSetId =
            getStringValue(args[3]), codeSystemId = getStringValue(args[4]), codeSystemName = getStringValue(args[5]), codeId = getStringValue(args[6]), codeName =
            getStringValue(args[7]);
        Map<MultiKey<String>, ValidatorCodeSystem> expectedCodeSystems;
        Map<MultiKey<String>, ValidatorCode> expectedCodes;
        boolean result = true;

        contextData.put(
            new MultiKey<>(patternId, assertionId, CrigttContextDataNames.VALIDATE_VOCAB_STATIC_VALUE_SET_EXPECTED_NAME),
            Collections.singletonList(new ValidatorValueSetImpl(expectedValueSetId, (activeValueSets.containsKey(expectedValueSetId) ? activeValueSets.get(
                expectedValueSetId).getName() : null))));

        if (valueSetId != null) {
            result = Objects.equals(expectedValueSetId, valueSetId);
        } else {
            valueSetId = expectedValueSetId;
        }

        contextData.put(new MultiKey<>(patternId, assertionId, CrigttContextDataNames.VALIDATE_VOCAB_STATIC_VALUE_SET_NAME), new ValidatorValueSetImpl(
            valueSetId, null));

        contextData.put(
            new MultiKey<>(patternId, assertionId, CrigttContextDataNames.VALIDATE_VOCAB_STATIC_CODE_SYSTEM_EXPECTED_NAME),
            (expectedCodeSystems =
                CrigttStreamUtils.toMap(
                    Function.<MultiKey<String>> identity(),
                    activeCodeSystems::get,
                    LinkedHashMap::new,
                    valueSetCodeSystems
                        .get(expectedValueSetId)
                        .stream()
                        .filter(
                            expectedCodeSystemKey -> (activeCodeSystems.containsKey(expectedCodeSystemKey) && codeSystemCodes.get(expectedCodeSystemKey)
                                .stream().anyMatch(expectedCodeKey -> expectedCodeKey.getKey(2).equals(codeId)))))).values().stream()
                .collect(Collectors.toList()));

        contextData.put(new MultiKey<>(patternId, assertionId, CrigttContextDataNames.VALIDATE_VOCAB_STATIC_CODE_SYSTEM_NAME), new ValidatorCodeSystemImpl(
            codeSystemId, codeSystemName));

        if (codeSystemName != null) {
            result &= expectedCodeSystems.values().stream().anyMatch(expectedCodeSystem -> Objects.equals(codeSystemName, expectedCodeSystem.getName()));
        }

        contextData.put(
            new MultiKey<>(patternId, assertionId, CrigttContextDataNames.VALIDATE_VOCAB_STATIC_CODE_EXPECTED_NAME),
            (expectedCodes =
                CrigttStreamUtils.toMap(
                    Function.<MultiKey<String>> identity(),
                    activeCodes::get,
                    LinkedHashMap::new,
                    expectedCodeSystems
                        .keySet()
                        .stream()
                        .flatMap(
                            expectedCodeSystemKey -> codeSystemCodes.get(expectedCodeSystemKey).stream()
                                .filter(expectedCodeKey -> (expectedCodeKey.getKey(2).equals(codeId) && activeCodes.containsKey(expectedCodeKey)))))).values()
                .stream().collect(Collectors.toList()));

        contextData
            .put(new MultiKey<>(patternId, assertionId, CrigttContextDataNames.VALIDATE_VOCAB_STATIC_CODE_NAME), new ValidatorCodeImpl(codeId, codeName));

        return new XdmAtomicValue((result && ((codeName == null) || expectedCodes.values().stream()
            .anyMatch(expectedCode -> Objects.equals(codeName, expectedCode.getName())))));
    }
}
