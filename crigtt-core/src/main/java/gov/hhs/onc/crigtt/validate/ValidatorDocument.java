package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import gov.hhs.onc.crigtt.validate.impl.ValidatorDocumentImpl;

@JsonSubTypes({ @Type(ValidatorDocumentImpl.class) })
public interface ValidatorDocument {
    public String getContent();

    public void setContent(String content);

    @JsonProperty
    public String getFileName();

    public void setFileName(String fileName);

    @JsonProperty
    public String getHash();

    public void setHash(String hash);
}
