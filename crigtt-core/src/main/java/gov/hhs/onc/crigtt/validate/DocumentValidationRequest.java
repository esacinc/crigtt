package gov.hhs.onc.crigtt.validate;

import java.util.List;

public interface DocumentValidationRequest extends CrigttValidationRequest {
    public List<SchematronValidationRequest> getSchematronRequests();

    public void setSchematronRequests(List<SchematronValidationRequest> schematronReqs);
}
