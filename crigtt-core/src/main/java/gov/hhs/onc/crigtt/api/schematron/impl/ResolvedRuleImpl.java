package gov.hhs.onc.crigtt.api.schematron.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedAssert;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import java.util.Map;
import net.sf.saxon.s9api.XPathExecutable;

public class ResolvedRuleImpl extends AbstractResolvedSchematronBean implements ResolvedRule {
    private Map<String, ResolvedAssert> asserts;
    private XPathExecutable context;

    @Override
    public Map<String, ResolvedAssert> getAsserts() {
        return this.asserts;
    }

    @Override
    public void setAsserts(Map<String, ResolvedAssert> asserts) {
        this.asserts = asserts;
    }

    @Override
    public XPathExecutable getContext() {
        return this.context;
    }

    @Override
    public void setContext(XPathExecutable context) {
        this.context = context;
    }
}
