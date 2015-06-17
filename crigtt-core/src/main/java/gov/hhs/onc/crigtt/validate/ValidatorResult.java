package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import gov.hhs.onc.crigtt.validate.impl.ValidatorEventImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorResultImpl;
import java.util.List;

@JsonPropertyOrder({ "schemas", "events" })
@JsonSubTypes({ @Type(ValidatorResultImpl.class) })
public interface ValidatorResult extends ValidatorDocument {
    @JsonProperty
    public boolean isCached();

    public void setCached(boolean cached);

    @JsonDeserialize(contentAs = ValidatorEventImpl.class)
    @JsonProperty
    public List<ValidatorEvent> getEvents();

    public void setEvents(List<ValidatorEvent> events);

    @JsonProperty
    public TokenBuffer getSchemas();

    public void setSchemas(TokenBuffer schemas);

    @JsonProperty
    public boolean getStatus();

    public void setStatus(boolean status);
}
