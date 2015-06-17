package gov.hhs.onc.crigtt.validate.impl;

import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.beans.impl.AbstractCrigttStatusBean;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorEventLevel;
import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;

@JsonTypeName("validatorEvent")
public class ValidatorEventImpl extends AbstractCrigttStatusBean implements ValidatorEvent {
    private String assertion;
    private ValidatorEventLevel level;
    private CrigttLocation loc;
    private String pattern;
    private String phase;
    private String rule;
    private String schema;

    @Override
    public String getAssertion() {
        return this.assertion;
    }

    @Override
    public void setAssertion(String assertion) {
        this.assertion = assertion;
    }

    @Override
    public ValidatorEventLevel getLevel() {
        return this.level;
    }

    @Override
    public void setLevel(ValidatorEventLevel level) {
        this.level = level;
    }

    @Override
    public CrigttLocation getLocation() {
        return this.loc;
    }

    @Override
    public void setLocation(CrigttLocation loc) {
        this.loc = loc;
    }

    @Override
    public String getPattern() {
        return this.pattern;
    }

    @Override
    public void setPattern(String pattern) {
        this.pattern = pattern;
    }

    @Override
    public String getPhase() {
        return this.phase;
    }

    @Override
    public void setPhase(String phase) {
        this.phase = phase;
    }

    @Override
    public String getRule() {
        return this.rule;
    }

    @Override
    public void setRule(String rule) {
        this.rule = rule;
    }

    @Override
    public String getSchema() {
        return this.schema;
    }

    @Override
    public void setSchema(String schema) {
        this.schema = schema;
    }
}
