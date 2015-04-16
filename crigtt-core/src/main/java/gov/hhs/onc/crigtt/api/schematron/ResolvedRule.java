package gov.hhs.onc.crigtt.api.schematron;

import java.util.Map;

public interface ResolvedRule extends ResolvedSchematronBean {
    public Map<String, ResolvedAssert> getAsserts();

    public void setAsserts(Map<String, ResolvedAssert> asserts);

    public String getContext();

    public void setContext(String context);
}
