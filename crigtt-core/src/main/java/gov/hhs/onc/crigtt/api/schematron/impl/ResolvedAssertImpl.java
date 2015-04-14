package gov.hhs.onc.crigtt.api.schematron.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedAssert;
import javax.annotation.Nullable;
import net.sf.saxon.s9api.XPathExecutable;

public class ResolvedAssertImpl extends AbstractResolvedSchematronBean implements ResolvedAssert {
    private XPathExecutable test;
    private String text;

    @Override
    public XPathExecutable getTest() {
        return this.test;
    }

    @Override
    public void setTest(XPathExecutable test) {
        this.test = test;
    }

    @Nullable
    @Override
    public String getText() {
        return this.text;
    }

    @Override
    public void setText(String text) {
        this.text = text;
    }
}
