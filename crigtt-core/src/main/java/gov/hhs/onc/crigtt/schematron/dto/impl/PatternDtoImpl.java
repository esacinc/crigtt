package gov.hhs.onc.crigtt.schematron.dto.impl;

import gov.hhs.onc.crigtt.schematron.dto.PatternDto;
import java.util.ArrayList;
import java.util.List;

public class PatternDtoImpl extends AbstractCrigttDtoBean implements PatternDto {
    protected List<String> rules = new ArrayList<>();

    @Override
    public List<String> getRules() {
        return this.rules;
    }

    @Override
    public void setRules(List<String> rules) {
        this.rules.clear();
        this.rules.addAll(rules);
    }
}
