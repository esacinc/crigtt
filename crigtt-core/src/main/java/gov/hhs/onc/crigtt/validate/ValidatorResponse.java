package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import gov.hhs.onc.crigtt.beans.CrigttStatusBean;
import gov.hhs.onc.crigtt.validate.impl.ValidatorEventImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorRequestImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorResponseImpl;
import java.util.List;

@JsonPropertyOrder({ "request", "schemas", "events" })
@JsonSubTypes({ @Type(ValidatorResponseImpl.class) })
public interface ValidatorResponse extends CrigttStatusBean {
    @JsonDeserialize(contentAs = ValidatorEventImpl.class)
    @JsonProperty
    public List<ValidatorEvent> getEvents();

    public void setEvents(List<ValidatorEvent> events);

    @JsonDeserialize(as = ValidatorRequestImpl.class)
    @JsonProperty
    public ValidatorRequest getRequest();

    public void setRequest(ValidatorRequest req);

    @JsonProperty
    public TokenBuffer getSchemas();

    public void setSchemas(TokenBuffer schemas);
}
