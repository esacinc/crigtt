package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.beans.impl.AbstractCrigttIdentifiedBean;
import gov.hhs.onc.crigtt.validate.ValidatorBean;
import gov.hhs.onc.crigtt.validate.ValidatorContentType;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import org.joda.time.Instant;

public abstract class AbstractValidatorBean extends AbstractCrigttIdentifiedBean implements ValidatorBean {
    protected ValidatorContentType contentType;
    protected ValidatorDocument doc;
    protected Instant submittedTimestamp;

    @Override
    public ValidatorContentType getContentType() {
        return this.contentType;
    }

    @Override
    public void setContentType(ValidatorContentType contentType) {
        this.contentType = contentType;
    }

    @Override
    public ValidatorDocument getDocument() {
        return this.doc;
    }

    @Override
    public void setDocument(ValidatorDocument doc) {
        this.doc = doc;
    }

    @Override
    public Instant getSubmittedTimestamp() {
        return this.submittedTimestamp;
    }

    @Override
    public void setSubmittedTimestamp(Instant submittedTimestamp) {
        this.submittedTimestamp = submittedTimestamp;
    }
}
