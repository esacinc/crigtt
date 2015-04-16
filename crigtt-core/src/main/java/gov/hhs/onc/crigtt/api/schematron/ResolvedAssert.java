package gov.hhs.onc.crigtt.api.schematron;

import javax.annotation.Nullable;

public interface ResolvedAssert extends ResolvedSchematronBean {
    public String getTest();

    public void setTest(String test);

    @Nullable
    public String[] getText();

    public void setText(@Nullable String ... text);
}
