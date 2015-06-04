package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorRequest;
import org.joda.time.Instant;

public class ValidatorRequestImpl implements ValidatorRequest {
    private ValidatorDocument doc;
    private Instant submissionTimestamp;

    @Override
    public ValidatorDocument getDocument() {
        return this.doc;
    }

    @Override
    public void setDocument(ValidatorDocument doc) {
        this.doc = doc;
    }

    @Override
    public Instant getSubmissionTimestamp() {
        return this.submissionTimestamp;
    }

    @Override
    public void setSubmissionTimestamp(Instant submissionTimestamp) {
        this.submissionTimestamp = submissionTimestamp;
    }
}
