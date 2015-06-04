package gov.hhs.onc.crigtt.schematron.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import gov.hhs.onc.crigtt.schematron.dto.impl.PhaseDtoImpl;
import java.util.List;

@JsonSubTypes({ @Type(PhaseDtoImpl.class) })
public interface PhaseDto extends CrigttDtoBean {
    @JsonProperty
    public List<String> getPatterns();

    public void setPatterns(List<String> patterns);
}
