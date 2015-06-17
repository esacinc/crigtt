package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import gov.hhs.onc.crigtt.validate.impl.ValidatorErrorImpl;
import java.util.List;
import javax.annotation.Nullable;

@JsonSubTypes({ @Type(ValidatorErrorImpl.class) })
public interface ValidatorError {
    public boolean isSetMessage();

    @JsonProperty
    @Nullable
    public String getMessage();

    public void setMessage(@Nullable String msg);

    @JsonProperty
    public List<String> getStackTrace();

    public void setStackTrace(@Nullable List<String> stackTrace);
}
