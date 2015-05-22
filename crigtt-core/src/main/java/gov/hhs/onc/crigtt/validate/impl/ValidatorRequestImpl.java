package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.ValidatorRequest;
import javax.xml.transform.Source;

public class ValidatorRequestImpl extends AbstractValidatorServiceBean implements ValidatorRequest {
    private Source docSrc;

    @Override
    public Source getDocumentSource() {
        return this.docSrc;
    }

    @Override
    public void setDocumentSource(Source docSrc) {
        this.docSrc = docSrc;
    }
}
