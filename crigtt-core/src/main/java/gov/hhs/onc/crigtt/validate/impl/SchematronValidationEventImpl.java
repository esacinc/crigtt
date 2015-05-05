package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.Assertion;
import gov.hhs.onc.crigtt.api.schematron.Pattern;
import gov.hhs.onc.crigtt.api.schematron.Phase;
import gov.hhs.onc.crigtt.api.schematron.Rule;
import gov.hhs.onc.crigtt.validate.SchematronValidationEvent;
import gov.hhs.onc.crigtt.validate.ValidationEventLevel;
import net.sf.saxon.expr.parser.ExpressionLocation;

public class SchematronValidationEventImpl implements SchematronValidationEvent {
    private Assertion assertion;
    private ValidationEventLevel level;
    private ExpressionLocation loc;
    private Pattern pattern;
    private Phase phase;
    private Rule rule;

    @Override
    public Assertion getAssertion() {
        return this.assertion;
    }

    @Override
    public void setAssertion(Assertion assertion) {
        this.assertion = assertion;
    }

    @Override
    public ValidationEventLevel getLevel() {
        return this.level;
    }

    @Override
    public void setLevel(ValidationEventLevel level) {
        this.level = level;
    }

    @Override
    public ExpressionLocation getLocation() {
        return this.loc;
    }

    @Override
    public void setLocation(ExpressionLocation loc) {
        this.loc = loc;
    }

    @Override
    public Pattern getPattern() {
        return this.pattern;
    }

    @Override
    public void setPattern(Pattern pattern) {
        this.pattern = pattern;
    }

    @Override
    public Phase getPhase() {
        return this.phase;
    }

    @Override
    public void setPhase(Phase phase) {
        this.phase = phase;
    }

    @Override
    public Rule getRule() {
        return this.rule;
    }

    @Override
    public void setRule(Rule rule) {
        this.rule = rule;
    }
}
