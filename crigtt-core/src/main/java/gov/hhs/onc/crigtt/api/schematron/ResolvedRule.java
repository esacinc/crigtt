package gov.hhs.onc.crigtt.api.schematron;

import java.util.Map;

public interface ResolvedRule extends ResolvedSchematronBean {
    public Map<String, ResolvedAssertion> getAssertions();

    public void setAssertions(Map<String, ResolvedAssertion> assertions);

    public String getContext();

    public void setContext(String context);
}
