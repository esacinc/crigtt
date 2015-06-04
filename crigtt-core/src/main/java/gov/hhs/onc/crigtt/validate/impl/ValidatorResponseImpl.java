package gov.hhs.onc.crigtt.validate.impl;

import com.fasterxml.jackson.databind.util.TokenBuffer;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorRequest;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import java.util.List;
import org.joda.time.Instant;

public class ValidatorResponseImpl implements ValidatorResponse {
    private List<ValidatorEvent> events;
    private Instant processedTimestamp;
    private ValidatorRequest req;
    private TokenBuffer schemas;
    private boolean success;

    @Override
    public List<ValidatorEvent> getEvents() {
        return this.events;
    }

    @Override
    public void setEvents(List<ValidatorEvent> events) {
        this.events = events;
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
    public ValidatorRequest getRequest() {
        return this.req;
    }

    @Override
    public void setRequest(ValidatorRequest req) {
        this.req = req;
    }

    @Override
    public TokenBuffer getSchemas() {
        return this.schemas;
    }

    @Override
    public void setSchemas(TokenBuffer schemas) {
        this.schemas = schemas;
    }

    @Override
    public boolean isSuccess() {
        return this.success;
    }

    @Override
    public void setSuccess(boolean success) {
        this.success = success;
    }
}
