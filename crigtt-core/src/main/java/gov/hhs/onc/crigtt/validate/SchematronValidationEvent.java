package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.api.schematron.ResolvedAssertion;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import net.sf.saxon.expr.parser.ExpressionLocation;

public interface SchematronValidationEvent {
    public ResolvedAssertion getAssert();

    public void setAssert(ResolvedAssertion azzert);

    public ValidationEventLevel getLevel();

    public void setLevel(ValidationEventLevel level);

    public ExpressionLocation getLocation();

    public void setLocation(ExpressionLocation loc);

    public ResolvedPattern getPattern();

    public void setPattern(ResolvedPattern pattern);

    public ResolvedRule getRule();

    public void setRule(ResolvedRule rule);
}
