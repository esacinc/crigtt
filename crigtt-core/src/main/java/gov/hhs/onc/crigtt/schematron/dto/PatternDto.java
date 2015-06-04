package gov.hhs.onc.crigtt.schematron.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import gov.hhs.onc.crigtt.schematron.dto.impl.PatternDtoImpl;
import java.util.List;

@JsonSubTypes({ @Type(PatternDtoImpl.class) })
public interface PatternDto extends CrigttDtoBean {
    @JsonProperty
    public List<String> getRules();

    public void setRules(List<String> rules);
}
