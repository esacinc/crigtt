package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import gov.hhs.onc.crigtt.validate.impl.ValidatorDocumentImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorRequestImpl;
import java.util.UUID;
import org.joda.time.Instant;

@JsonSubTypes({ @Type(ValidatorRequestImpl.class) })
public interface ValidatorRequest {
    @JsonDeserialize(as = ValidatorDocumentImpl.class)
    @JsonProperty
    public ValidatorDocument getDocument();

    public void setDocument(ValidatorDocument doc);

    @JsonProperty
    public UUID getId();

    public void setId(UUID id);

    @JsonProperty
    public Instant getProcessedTimestamp();

    public void setProcessedTimestamp(Instant submissionTimestamp);

    @JsonProperty
    public Instant getSubmissionTimestamp();

    public void setSubmissionTimestamp(Instant submissionTimestamp);
}
