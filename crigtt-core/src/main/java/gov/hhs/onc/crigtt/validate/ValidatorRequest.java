package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import gov.hhs.onc.crigtt.validate.impl.ValidatorRequestImpl;

@JsonSubTypes({ @Type(ValidatorRequestImpl.class) })
public interface ValidatorRequest extends ValidatorBean {
}
