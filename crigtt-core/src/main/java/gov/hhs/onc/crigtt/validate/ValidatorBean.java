package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import gov.hhs.onc.crigtt.beans.CrigttIdentifiedBean;
import gov.hhs.onc.crigtt.validate.impl.ValidatorDocumentImpl;
import org.joda.time.Instant;

public interface ValidatorBean extends CrigttIdentifiedBean {
    @JsonProperty
    public ValidatorContentType getContentType();

    public void setContentType(ValidatorContentType contentType);

    @JsonDeserialize(as = ValidatorDocumentImpl.class)
    @JsonProperty
    public ValidatorDocument getDocument();

    public void setDocument(ValidatorDocument doc);

    @JsonProperty
    public Instant getSubmittedTimestamp();

    public void setSubmittedTimestamp(Instant submittedTimestamp);
}
