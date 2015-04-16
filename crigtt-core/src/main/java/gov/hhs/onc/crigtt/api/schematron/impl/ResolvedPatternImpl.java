package gov.hhs.onc.crigtt.api.schematron.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import gov.hhs.onc.crigtt.api.schematron.SchematronLevel;
import java.util.Map;

public class ResolvedPatternImpl extends AbstractResolvedSchematronBean implements ResolvedPattern {
    private SchematronLevel level;
    private Map<String, ResolvedRule> rules;

    public ResolvedPatternImpl(String id) {
        super(id);
    }

    @Override
    public SchematronLevel getLevel() {
        return this.level;
    }

    @Override
    public void setLevel(SchematronLevel level) {
        this.level = level;
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
