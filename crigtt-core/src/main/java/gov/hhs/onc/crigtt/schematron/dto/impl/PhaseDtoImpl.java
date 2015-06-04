package gov.hhs.onc.crigtt.schematron.dto.impl;

import gov.hhs.onc.crigtt.schematron.dto.PhaseDto;
import java.util.ArrayList;
import java.util.List;

public class PhaseDtoImpl extends AbstractCrigttDtoBean implements PhaseDto {
    protected List<String> patterns = new ArrayList<>();

    @Override
    public List<String> getPatterns() {
        return this.patterns;
    }

    @Override
    public void setPatterns(List<String> patterns) {
        this.patterns.clear();
        this.patterns.addAll(patterns);
    }
}
