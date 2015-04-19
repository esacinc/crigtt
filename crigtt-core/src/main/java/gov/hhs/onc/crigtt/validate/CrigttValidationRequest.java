package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.xml.impl.XdmDocument;

public interface CrigttValidationRequest {
    public XdmDocument getDocument();

    public void setDocument(XdmDocument doc);
}
