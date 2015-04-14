package gov.hhs.onc.crigtt.api.schematron;

import java.util.Map;
import net.sf.saxon.s9api.XPathExecutable;

public interface ResolvedRule extends ResolvedSchematronBean {
    public Map<String, ResolvedAssert> getAsserts();

    public void setAsserts(Map<String, ResolvedAssert> asserts);

    public XPathExecutable getContext();

    public void setContext(XPathExecutable context);
}
