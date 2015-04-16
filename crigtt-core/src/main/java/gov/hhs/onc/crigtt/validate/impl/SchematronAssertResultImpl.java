package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedAssert;
import gov.hhs.onc.crigtt.validate.SchematronAssertResult;
import net.sf.saxon.expr.parser.ExpressionLocation;

public class SchematronAssertResultImpl extends AbstractSchematronResultBean<ResolvedAssert> implements SchematronAssertResult {
    private ExpressionLocation loc;

    public SchematronAssertResultImpl(ResolvedAssert bean) {
        super(bean);
    }

    @Override
    public ExpressionLocation getLocation() {
        return this.loc;
    }

    @Override
    public void setLocation(ExpressionLocation loc) {
        this.loc = loc;
    }
}
