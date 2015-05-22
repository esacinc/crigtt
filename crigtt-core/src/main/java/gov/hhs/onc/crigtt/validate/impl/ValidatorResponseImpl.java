package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import org.joda.time.Instant;

public class ValidatorResponseImpl extends AbstractValidatorServiceBean implements ValidatorResponse {
    private Instant processedTimestamp;

    @Override
    public Instant getProcessedTimestamp() {
        return this.processedTimestamp;
    }

    @Override
    public void setProcessedTimestamp(Instant processedTimestamp) {
        this.processedTimestamp = processedTimestamp;
    }
}
