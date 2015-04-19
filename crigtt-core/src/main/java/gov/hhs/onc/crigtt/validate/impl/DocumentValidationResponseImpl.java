package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.DocumentValidationResponse;
import gov.hhs.onc.crigtt.validate.SchematronValidationResponse;
import java.util.List;
import javax.annotation.Nullable;

public class DocumentValidationResponseImpl extends AbstractCrigttValidationResponse implements DocumentValidationResponse {
    private List<SchematronValidationResponse> schematronResps;

    @Override
    public boolean hasSchematronResponses() {
        return (this.schematronResps != null);
    }

    @Nullable
    @Override
    public List<SchematronValidationResponse> getSchematronResponses() {
        return this.schematronResps;
    }

    @Override
    public void setSchematronResponses(@Nullable List<SchematronValidationResponse> schematronResps) {
        this.schematronResps = schematronResps;
    }
}
