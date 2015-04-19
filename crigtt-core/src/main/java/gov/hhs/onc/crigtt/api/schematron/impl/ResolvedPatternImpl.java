package gov.hhs.onc.crigtt.api.schematron.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import java.util.Map;

public class ResolvedPatternImpl extends AbstractResolvedSchematronBean implements ResolvedPattern {
    private Map<String, ResolvedRule> rules;

    public ResolvedPatternImpl(String id) {
        super(id);
    }

    @Override
    public Map<String, ResolvedRule> getRules() {
        return this.rules;
    }

    @Override
    public void setRules(Map<String, ResolvedRule> rules) {
        this.rules = rules;
    }
}
