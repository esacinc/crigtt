package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.api.schematron.ResolvedAssert;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import net.sf.saxon.expr.parser.ExpressionLocation;

public interface SchematronValidationEvent {
    public ResolvedAssert getAssert();

    public void setAssert(ResolvedAssert azzert);

    public ValidationEventLevel getLevel();

    public void setLevel(ValidationEventLevel level);

    public ExpressionLocation getLocation();

    public void setLocation(ExpressionLocation loc);

    public ResolvedPattern getPattern();

    public void setPattern(ResolvedPattern pattern);

    public ResolvedRule getRule();

    public void setRule(ResolvedRule rule);
}
