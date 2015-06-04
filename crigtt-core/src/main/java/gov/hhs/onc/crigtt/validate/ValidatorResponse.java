package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import gov.hhs.onc.crigtt.validate.impl.ValidatorEventImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorRequestImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorResponseImpl;
import java.util.List;
import org.joda.time.Instant;

@JsonPropertyOrder({ "request", "schemas", "events" })
@JsonSubTypes({ @Type(ValidatorResponseImpl.class) })
public interface ValidatorResponse {
    @JsonDeserialize(contentAs = ValidatorEventImpl.class)
    @JsonProperty
    public List<ValidatorEvent> getEvents();

    public void setEvents(List<ValidatorEvent> events);

    @JsonProperty
    public Instant getProcessedTimestamp();

    public void setProcessedTimestamp(Instant submissionTimestamp);

    @JsonDeserialize(as = ValidatorRequestImpl.class)
    @JsonProperty
    public ValidatorRequest getRequest();

    public void setRequest(ValidatorRequest req);

    @JsonProperty
    public TokenBuffer getSchemas();

    public void setSchemas(TokenBuffer schemas);

    @JsonProperty
    public boolean isSuccess();

    public void setSuccess(boolean success);
}
