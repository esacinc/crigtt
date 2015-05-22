package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import gov.hhs.onc.crigtt.validate.impl.ValidatorRequestImpl;
import javax.xml.transform.Source;

@JsonSubTypes({ @Type(ValidatorRequestImpl.class) })
public interface ValidatorRequest extends ValidatorServiceBean {
    public Source getDocumentSource();

    public void setDocumentSource(Source docSrc);
}
