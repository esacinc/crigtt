package gov.hhs.onc.crigtt.validate.vocab;

import gov.hhs.onc.crigtt.validate.ValidatorCode;
import gov.hhs.onc.crigtt.validate.ValidatorCodeSystem;
import gov.hhs.onc.crigtt.validate.ValidatorValueSet;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections4.keyvalue.MultiKey;

public interface StaticVocabService extends VocabService {
    public String processTestExpression(String patternId, String assertionId, String testExpr);

    public Map<MultiKey<String>, ValidatorCode> getActiveCodes();

    public Map<MultiKey<String>, ValidatorCodeSystem> getActiveCodeSystems();

    public Map<String, ValidatorValueSet> getActiveValueSets();

    public Map<MultiKey<String>, Set<MultiKey<String>>> getCodeSystemCodes();

    public XdmDocument getDocument();

    public void setDocument(XdmDocument doc);

    public Map<String, String> getInitialTestExpressions();

    public Map<String, Set<MultiKey<String>>> getValueSetCodeSystems();
}
