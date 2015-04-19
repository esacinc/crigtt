package gov.hhs.onc.crigtt.validate;

import java.util.Map;

public interface SchematronValidator extends CrigttValidator<SchematronValidationRequest, SchematronValidationResponse> {
    public Map<String, ValidationEventLevel> getPhaseLevels();

    public void setPhaseLevels(Map<String, ValidationEventLevel> phaseLevels);

    public CrigttSchematron getSchematron();

    public void setSchematron(CrigttSchematron schematron);
}
