package gov.hhs.onc.crigtt.api.schematron.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedAssertion;

public class ResolvedAssertionImpl extends AbstractResolvedSchematronBean implements ResolvedAssertion {
    private String test;
    private String[] text;

    public ResolvedAssertionImpl(String id) {
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

    @Override
    public String[] getText() {
        return this.text;
    }

    @Override
    public void setText(String ... text) {
        this.text = text;
    }
}
