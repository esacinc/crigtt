package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import gov.hhs.onc.crigtt.validate.SchematronAssertResult;
import gov.hhs.onc.crigtt.validate.SchematronRuleResult;
import java.util.Map;

public class SchematronRuleResultImpl extends AbstractSchematronResultBean<ResolvedRule> implements SchematronRuleResult {
    private Map<String, SchematronAssertResult> assertResults;

    public SchematronRuleResultImpl(ResolvedRule bean) {
        super(bean);
    }

    @Override
    public Map<String, SchematronAssertResult> getAssertResults() {
        return this.assertResults;
    }

    @Override
    public void setAssertResults(Map<String, SchematronAssertResult> assertResults) {
        this.assertResults = assertResults;
    }
}
