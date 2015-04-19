package gov.hhs.onc.crigtt.api.schematron.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPhase;
import java.util.Map;

public class ResolvedPhaseImpl extends AbstractResolvedSchematronBean implements ResolvedPhase {
    private Map<String, ResolvedPattern> patterns;

    public ResolvedPhaseImpl(String id) {
        super(id);
    }

    @Override
    public Map<String, ResolvedPattern> getPatterns() {
        return this.patterns;
    }

    @Override
    public void setPatterns(Map<String, ResolvedPattern> patterns) {
        this.patterns = patterns;
    }
}
