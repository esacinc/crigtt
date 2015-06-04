package gov.hhs.onc.crigtt.validate.impl;

import com.fasterxml.jackson.databind.util.TokenBuffer;
import gov.hhs.onc.crigtt.beans.impl.AbstractCrigttStatusBean;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorRequest;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import java.util.List;

public class ValidatorResponseImpl extends AbstractCrigttStatusBean implements ValidatorResponse {
    private List<ValidatorEvent> events;
    private ValidatorRequest req;
    private TokenBuffer schemas;

    @Override
    public List<ValidatorEvent> getEvents() {
        return this.events;
    }

    @Override
    public void setEvents(List<ValidatorEvent> events) {
        this.events = events;
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
}
