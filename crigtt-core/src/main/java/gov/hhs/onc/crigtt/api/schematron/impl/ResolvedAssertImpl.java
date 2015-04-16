package gov.hhs.onc.crigtt.api.schematron.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedAssert;
import javax.annotation.Nullable;

public class ResolvedAssertImpl extends AbstractResolvedSchematronBean implements ResolvedAssert {
    private String test;
    private String[] text;

    public ResolvedAssertImpl(String id) {
        super(id);
    }

    @Override
    public String getTest() {
        return this.test;
    }

    @Override
    public void setTest(String test) {
        this.test = test;
    }

    @Nullable
    @Override
    public String[] getText() {
        return this.text;
    }

    @Override
    public void setText(@Nullable String ... text) {
        this.text = text;
    }
}
