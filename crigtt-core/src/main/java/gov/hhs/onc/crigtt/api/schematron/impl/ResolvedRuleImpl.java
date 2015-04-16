package gov.hhs.onc.crigtt.api.schematron.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedAssert;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import java.util.Map;

public class ResolvedRuleImpl extends AbstractResolvedSchematronBean implements ResolvedRule {
    private Map<String, ResolvedAssert> asserts;
    private String context;

    public ResolvedRuleImpl(String id) {
        super(id);
    }

    @Override
    public Map<String, ResolvedAssert> getAsserts() {
        return this.asserts;
    }

    @Override
    public void setAsserts(Map<String, ResolvedAssert> asserts) {
        this.asserts = asserts;
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
