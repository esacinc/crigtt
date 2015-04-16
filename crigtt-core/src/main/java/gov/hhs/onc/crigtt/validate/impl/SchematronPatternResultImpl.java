package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.validate.SchematronPatternResult;
import gov.hhs.onc.crigtt.validate.SchematronRuleResult;
import java.util.Map;

public class SchematronPatternResultImpl extends AbstractSchematronResultBean<ResolvedPattern> implements SchematronPatternResult {
    private Map<String, SchematronRuleResult> ruleResults;

    public SchematronPatternResultImpl(ResolvedPattern bean) {
        super(bean);
    }

    @Override
    public Map<String, SchematronRuleResult> getRuleResults() {
        return this.ruleResults;
    }

    @Override
    public void setRuleResults(Map<String, SchematronRuleResult> ruleResults) {
        this.ruleResults = ruleResults;
    }
}
