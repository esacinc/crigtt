package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.DocumentValidationRequest;
import gov.hhs.onc.crigtt.validate.SchematronValidationRequest;
import java.util.List;

public class DocumentValidationRequestImpl extends AbstractCrigttValidationRequest implements DocumentValidationRequest {
    private List<SchematronValidationRequest> schematronReqs;

    @Override
    public List<SchematronValidationRequest> getSchematronRequests() {
        return this.schematronReqs;
    }

    @Override
    public void setSchematronRequests(List<SchematronValidationRequest> schematronReqs) {
        this.schematronReqs = schematronReqs;
    }
}
