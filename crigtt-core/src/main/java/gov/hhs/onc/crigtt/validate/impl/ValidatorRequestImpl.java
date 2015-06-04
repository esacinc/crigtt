package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorRequest;
import java.util.UUID;
import org.joda.time.Instant;

public class ValidatorRequestImpl implements ValidatorRequest {
    private ValidatorDocument doc;
    private UUID id;
    private Instant processedTimestamp;
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
    public UUID getId() {
        return this.id;
    }

    @Override
    public void setId(UUID id) {
        this.id = id;
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
    public Instant getSubmissionTimestamp() {
        return this.submissionTimestamp;
    }

    @Override
    public void setSubmissionTimestamp(Instant submissionTimestamp) {
        this.submissionTimestamp = submissionTimestamp;
    }
}
