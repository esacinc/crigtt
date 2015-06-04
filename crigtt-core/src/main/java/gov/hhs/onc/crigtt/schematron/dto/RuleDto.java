package gov.hhs.onc.crigtt.schematron.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import gov.hhs.onc.crigtt.schematron.dto.impl.RuleDtoImpl;
import java.util.List;
import javax.annotation.Nullable;

@JsonSubTypes({ @Type(RuleDtoImpl.class) })
public interface RuleDto extends CrigttDtoBean {
    @JsonProperty
    public List<String> getAssertions();

    public void setAssertions(List<String> assertions);

    public boolean isSetContext();

    @JsonProperty
    @Nullable
    public String getContext();

    public void setContext(@Nullable String context);
}
