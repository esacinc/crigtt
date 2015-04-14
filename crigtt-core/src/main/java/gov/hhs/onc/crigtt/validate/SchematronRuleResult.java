package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import java.util.Map;

public interface SchematronRuleResult extends SchematronResultBean<ResolvedRule> {
    public Map<String, SchematronAssertResult> getAssertResults();

    public void setAssertResults(Map<String, SchematronAssertResult> assertResults);
}
