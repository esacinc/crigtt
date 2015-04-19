package gov.hhs.onc.crigtt.api.schematron;

import java.util.Map;

public interface ResolvedPattern extends ResolvedSchematronBean {
    public Map<String, ResolvedRule> getRules();

    public void setRules(Map<String, ResolvedRule> rules);
}
