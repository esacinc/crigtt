package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import gov.hhs.onc.crigtt.validate.impl.ValidatorErrorImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorResponseImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorResultImpl;
import javax.annotation.Nullable;
import org.joda.time.Instant;

@JsonSubTypes({ @Type(ValidatorResponseImpl.class) })
public interface ValidatorResponse extends ValidatorBean {
    public boolean isSetError();

    @JsonDeserialize(as = ValidatorErrorImpl.class)
    @JsonProperty
    @Nullable
    public ValidatorError getError();

    public void setError(@Nullable ValidatorError error);

    @JsonProperty
    public Instant getProcessedTimestamp();

    public void setProcessedTimestamp(Instant processedTimestamp);

    @JsonDeserialize(as = ValidatorResultImpl.class)
    @JsonProperty
    public ValidatorResult getResult();

    public void setResult(ValidatorResult result);
}
