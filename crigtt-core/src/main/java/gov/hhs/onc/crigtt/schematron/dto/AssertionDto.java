package gov.hhs.onc.crigtt.schematron.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import gov.hhs.onc.crigtt.schematron.dto.impl.AssertionDtoImpl;
import javax.annotation.Nullable;

@JsonSubTypes({ @Type(AssertionDtoImpl.class) })
public interface AssertionDto extends CrigttDtoBean {
    public boolean isSetTest();

    @JsonProperty
    @Nullable
    public String getTest();

    public void setTest(@Nullable String test);
}
