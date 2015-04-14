package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import java.util.Map;

public interface SchematronPatternResult extends SchematronResultBean<ResolvedPattern> {
    public Map<String, SchematronRuleResult> getRuleResults();

    public void setRuleResults(Map<String, SchematronRuleResult> ruleResults);
}
