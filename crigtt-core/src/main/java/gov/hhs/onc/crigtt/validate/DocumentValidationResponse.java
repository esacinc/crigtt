package gov.hhs.onc.crigtt.validate;

import java.util.List;
import javax.annotation.Nullable;

public interface DocumentValidationResponse extends CrigttValidationResponse {
    public boolean hasSchematronResponses();
    
    @Nullable
    public List<SchematronValidationResponse> getSchematronResponses();
    
    public void setSchematronResponses(@Nullable List<SchematronValidationResponse> schematronResps);
}
