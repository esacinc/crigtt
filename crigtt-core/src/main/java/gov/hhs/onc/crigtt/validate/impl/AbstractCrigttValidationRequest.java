package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.CrigttValidationRequest;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;

public abstract class AbstractCrigttValidationRequest implements CrigttValidationRequest {
    protected XdmDocument doc;

    @Override
    public XdmDocument getDocument() {
        return this.doc;
    }

    @Override
    public void setDocument(XdmDocument doc) {
        this.doc = doc;
    }
}
