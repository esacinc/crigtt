package gov.hhs.onc.crigtt.validate.impl;

import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.ValidatorError;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.ValidatorResult;
import javax.annotation.Nullable;
import org.joda.time.Instant;

@JsonTypeName("validatorResp")
public class ValidatorResponseImpl extends AbstractValidatorBean implements ValidatorResponse {
    private ValidatorError error;
    private Instant processedTimestamp;
    private ValidatorResult result;

    @Override
    public boolean isSetError() {
        return (this.error != null);
    }

    @Nullable
    @Override
    public ValidatorError getError() {
        return this.error;
    }

    @Override
    public void setError(@Nullable ValidatorError error) {
        this.error = error;
    }

    @Override
    public Instant getProcessedTimestamp() {
        return this.processedTimestamp;
    }

    @Override
    public void setProcessedTimestamp(Instant processedTimestamp) {
        this.processedTimestamp = processedTimestamp;
    }

    @Override
    public ValidatorResult getResult() {
        return this.result;
    }

    @Override
    public void setResult(ValidatorResult result) {
        this.result = result;
    }
}
