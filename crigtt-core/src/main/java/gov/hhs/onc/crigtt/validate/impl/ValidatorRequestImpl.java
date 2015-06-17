package gov.hhs.onc.crigtt.validate.impl;

import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.ValidatorRequest;

@JsonTypeName("validatorReq")
public class ValidatorRequestImpl extends AbstractValidatorBean implements ValidatorRequest {
}
