package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.api.schematron.ResolvedAssert;
import net.sf.saxon.expr.parser.ExpressionLocation;

public interface SchematronAssertResult extends SchematronResultBean<ResolvedAssert> {
    public ExpressionLocation getLocation();

    public void setLocation(ExpressionLocation loc);
}
