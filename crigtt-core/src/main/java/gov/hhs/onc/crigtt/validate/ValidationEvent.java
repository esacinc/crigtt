package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.schematron.Assertion;
import gov.hhs.onc.crigtt.schematron.Pattern;
import gov.hhs.onc.crigtt.schematron.Phase;
import gov.hhs.onc.crigtt.schematron.Rule;
import net.sf.saxon.expr.parser.ExpressionLocation;

public interface ValidationEvent {
    public Assertion getAssertion();

    public void setAssertion(Assertion assertion);

    public ValidationEventLevel getLevel();

    public void setLevel(ValidationEventLevel level);

    public ExpressionLocation getLocation();

    public void setLocation(ExpressionLocation loc);

    public Pattern getPattern();

    public void setPattern(Pattern pattern);

    public Phase getPhase();

    public void setPhase(Phase phase);

    public Rule getRule();

    public void setRule(Rule rule);
}
