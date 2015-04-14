package gov.hhs.onc.crigtt.api.schematron;

import javax.annotation.Nullable;
import net.sf.saxon.s9api.XPathExecutable;

public interface ResolvedAssert extends ResolvedSchematronBean {
    public XPathExecutable getTest();

    public void setTest(XPathExecutable test);

    @Nullable
    public String getText();

    public void setText(@Nullable String text);
}
