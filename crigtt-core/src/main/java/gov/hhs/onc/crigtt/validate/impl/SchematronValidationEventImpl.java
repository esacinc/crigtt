package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedAssertion;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import gov.hhs.onc.crigtt.validate.SchematronValidationEvent;
import gov.hhs.onc.crigtt.validate.ValidationEventLevel;
import net.sf.saxon.expr.parser.ExpressionLocation;

public class SchematronValidationEventImpl implements SchematronValidationEvent {
    private ResolvedAssertion azzert;
    private ValidationEventLevel level;
    private ExpressionLocation loc;
    private ResolvedPattern pattern;
    private ResolvedRule rule;

    @Override
    public ResolvedAssertion getAssert() {
        return this.azzert;
    }

    @Override
    public void setAssert(ResolvedAssertion azzert) {
        this.azzert = azzert;
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
    public ResolvedPattern getPattern() {
        return this.pattern;
    }

    @Override
    public void setPattern(ResolvedPattern pattern) {
        this.pattern = pattern;
    }

    @Override
    public ResolvedRule getRule() {
        return this.rule;
    }

    @Override
    public void setRule(ResolvedRule rule) {
        this.rule = rule;
    }
}
