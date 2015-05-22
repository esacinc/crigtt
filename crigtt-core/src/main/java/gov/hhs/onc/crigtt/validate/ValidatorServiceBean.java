package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.joda.time.Instant;

public interface ValidatorServiceBean {
    @JsonProperty
    public String getDocumentFileName();

    public void setDocumentFileName(String docFileName);

    @JsonProperty
    public String getDocumentId();

    public void setDocumentId(String docId);

    @JsonProperty
    public Instant getSubmissionTimestamp();

    public void setSubmissionTimestamp(Instant submissionTimestamp);
}
