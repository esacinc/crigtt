package gov.hhs.onc.crigtt.api.schematron;

public interface ResolvedAssert extends ResolvedSchematronBean {
    public String getTest();

    public void setTest(String test);

    public String[] getText();

    public void setText(String ... text);
}
