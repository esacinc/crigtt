package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import gov.hhs.onc.crigtt.beans.CrigttStatusBean;
import gov.hhs.onc.crigtt.validate.impl.ValidatorEventImpl;
import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;

@JsonSubTypes({ @Type(ValidatorEventImpl.class) })
public interface ValidatorEvent extends CrigttStatusBean {
    @JsonProperty
    public String getAssertion();

    public void setAssertion(String assertion);

    @JsonProperty
    public ValidatorEventLevel getLevel();

    public void setLevel(ValidatorEventLevel level);

    @JsonProperty
    public CrigttLocation getLocation();

    public void setLocation(CrigttLocation loc);

    @JsonProperty
    public String getPattern();

    public void setPattern(String pattern);

    @JsonProperty
    public String getPhase();

    public void setPhase(String phase);

    @JsonProperty
    public String getRule();

    public void setRule(String rule);

    @JsonProperty
    public String getSchema();

    public void setSchema(String schema);
}
