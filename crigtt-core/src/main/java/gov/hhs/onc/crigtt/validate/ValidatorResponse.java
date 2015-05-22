package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import gov.hhs.onc.crigtt.validate.impl.ValidatorResponseImpl;
import org.joda.time.Instant;

@JsonSubTypes({ @Type(ValidatorResponseImpl.class) })
public interface ValidatorResponse extends ValidatorServiceBean {
    @JsonProperty
    public Instant getProcessedTimestamp();

    public void setProcessedTimestamp(Instant submissionTimestamp);
}
