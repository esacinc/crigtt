package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.ValidatorServiceBean;
import org.joda.time.Instant;

public abstract class AbstractValidatorServiceBean implements ValidatorServiceBean {
    protected String docFileName;
    protected String docId;
    protected Instant submissionTimestamp;

    @Override
    public String getDocumentFileName() {
        return this.docFileName;
    }

    @Override
    public void setDocumentFileName(String docFileName) {
        this.docFileName = docFileName;
    }

    @Override
    public String getDocumentId() {
        return this.docId;
    }

    @Override
    public void setDocumentId(String docId) {
        this.docId = docId;
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
