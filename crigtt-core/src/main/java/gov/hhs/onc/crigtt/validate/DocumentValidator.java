package gov.hhs.onc.crigtt.validate;

public interface DocumentValidator extends CrigttValidator<DocumentValidationRequest, DocumentValidationResponse> {
    public SchematronValidator[] getSchematronValidators();

    public void setSchematronValidators(SchematronValidator ... schematronValidators);
}
