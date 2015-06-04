package gov.hhs.onc.crigtt.schematron.dto.impl;

import gov.hhs.onc.crigtt.schematron.dto.AssertionDto;
import gov.hhs.onc.crigtt.schematron.dto.PatternDto;
import gov.hhs.onc.crigtt.schematron.dto.PhaseDto;
import gov.hhs.onc.crigtt.schematron.dto.RuleDto;
import gov.hhs.onc.crigtt.schematron.dto.SchemaDto;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.annotation.Nullable;

public class SchemaDtoImpl extends AbstractCrigttDtoBean implements SchemaDto {
    protected Map<String, AssertionDto> assertions = new LinkedHashMap<>();
    protected Map<String, PatternDto> patterns = new LinkedHashMap<>();
    protected Map<String, PhaseDto> phases = new LinkedHashMap<>();
    protected String queryBinding;
    protected Map<String, RuleDto> rules = new LinkedHashMap<>();
    protected String version;

    @Override
    public Map<String, AssertionDto> getAssertions() {
        return this.assertions;
    }

    @Override
    public void setAssertions(Map<String, AssertionDto> assertions) {
        this.assertions.clear();
        this.assertions.putAll(assertions);
    }

    @Override
    public Map<String, PatternDto> getPatterns() {
        return this.patterns;
    }

    @Override
    public void setPatterns(Map<String, PatternDto> patterns) {
        this.patterns.clear();
        this.patterns.putAll(patterns);
    }

    @Override
    public Map<String, PhaseDto> getPhases() {
        return this.phases;
    }

    @Override
    public void setPhases(Map<String, PhaseDto> phases) {
        this.phases.clear();
        this.phases.putAll(phases);
    }

    @Override
    public boolean isSetQueryBinding() {
        return (this.queryBinding != null);
    }

    @Nullable
    @Override
    public String getQueryBinding() {
        return this.queryBinding;
    }

    @Override
    public void setQueryBinding(@Nullable String queryBinding) {
        this.queryBinding = queryBinding;
    }

    @Override
    public Map<String, RuleDto> getRules() {
        return this.rules;
    }

    @Override
    public void setRules(Map<String, RuleDto> rules) {
        this.rules.clear();
        this.rules.putAll(rules);
    }

    @Override
    public boolean isSetVersion() {
        return (this.version != null);
    }

    @Nullable
    @Override
    public String getVersion() {
        return this.version;
    }

    @Override
    public void setVersion(@Nullable String version) {
        this.version = version;
    }
}
