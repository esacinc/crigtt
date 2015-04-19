package gov.hhs.onc.crigtt.validate;

public interface CrigttValidator<T extends CrigttValidationRequest, U extends CrigttValidationResponse> {
    public U validate(T req);
}
