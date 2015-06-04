package gov.hhs.onc.crigtt.schematron.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import gov.hhs.onc.crigtt.schematron.dto.impl.SchemaDtoImpl;
import java.util.Map;
import javax.annotation.Nullable;

@JsonSubTypes({ @Type(SchemaDtoImpl.class) })
public interface SchemaDto extends CrigttDtoBean {
    @JsonProperty
    public Map<String, AssertionDto> getAssertions();

    public void setAssertions(Map<String, AssertionDto> assertions);

    @JsonProperty
    public Map<String, PatternDto> getPatterns();

    public void setPatterns(Map<String, PatternDto> patterns);

    @JsonProperty
    public Map<String, PhaseDto> getPhases();

    public void setPhases(Map<String, PhaseDto> phases);

    public boolean isSetQueryBinding();

    @JsonProperty
    @Nullable
    public String getQueryBinding();

    public void setQueryBinding(@Nullable String queryBinding);

    @JsonProperty
    public Map<String, RuleDto> getRules();

    public void setRules(Map<String, RuleDto> rules);

    public boolean isSetVersion();

    @JsonProperty
    @Nullable
    public String getVersion();

    public void setVersion(@Nullable String version);
}
