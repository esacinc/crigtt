package gov.hhs.onc.crigtt.api.schematron.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedAssertion;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import java.util.Map;

public class ResolvedRuleImpl extends AbstractResolvedSchematronBean implements ResolvedRule {
    private Map<String, ResolvedAssertion> assertions;
    private String context;

    public ResolvedRuleImpl(String id) {
        super(id);
    }

    @Override
    public Map<String, ResolvedAssertion> getAssertions() {
        return this.assertions;
    }

    @Override
    public void setAssertions(Map<String, ResolvedAssertion> assertions) {
        this.assertions = assertions;
    }

    @Override
    public String getContext() {
        return this.context;
    }

    @Override
    public void setContext(String context) {
        this.context = context;
    }
}
