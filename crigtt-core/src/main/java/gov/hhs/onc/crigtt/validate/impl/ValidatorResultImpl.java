package gov.hhs.onc.crigtt.validate.impl;

import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorResult;
import java.util.List;

@JsonTypeName("validatorResult")
public class ValidatorResultImpl extends ValidatorDocumentImpl implements ValidatorResult {
    private boolean cached;
    private List<ValidatorEvent> events;
    private TokenBuffer schemas;
    private boolean status = true;

    @Override
    public boolean isCached() {
        return this.cached;
    }

    @Override
    public void setCached(boolean cached) {
        this.cached = cached;
    }

    @Override
    public List<ValidatorEvent> getEvents() {
        return this.events;
    }

    @Override
    public void setEvents(List<ValidatorEvent> events) {
        this.events = events;
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
    public boolean getStatus() {
        return this.status;
    }

    @Override
    public void setStatus(boolean status) {
        this.status = status;
    }
}
