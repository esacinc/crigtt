package gov.hhs.onc.crigtt.api.schematron;

import java.util.Map;

public interface ResolvedPhase extends ResolvedSchematronBean {
    public Map<String, ResolvedPattern> getPatterns();

    public void setPatterns(Map<String, ResolvedPattern> patterns);
}
