package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.transform.impl.CrigttDocumentBuilder;
import gov.hhs.onc.crigtt.validate.CrigttValidationRequest;
import gov.hhs.onc.crigtt.validate.CrigttValidationResponse;
import gov.hhs.onc.crigtt.validate.CrigttValidator;
import javax.annotation.Resource;

public abstract class AbstractCrigttValidator<T extends CrigttValidationRequest, U extends CrigttValidationResponse> implements CrigttValidator<T, U> {
    @Resource(name = "docBuilderBase")
    protected CrigttDocumentBuilder docBuilder;
}
