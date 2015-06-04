package gov.hhs.onc.crigtt.schematron.dto.impl;

import gov.hhs.onc.crigtt.schematron.dto.RuleDto;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;

public class RuleDtoImpl extends AbstractCrigttDtoBean implements RuleDto {
    protected List<String> assertions = new ArrayList<>();
    protected String context;

    @Override
    public List<String> getAssertions() {
        return this.assertions;
    }

    @Override
    public void setAssertions(List<String> assertions) {
        this.assertions.clear();
        this.assertions.addAll(assertions);
    }

    @Override
    public boolean isSetContext() {
        return (this.context != null);
    }

    @Nullable
    @Override
    public String getContext() {
        return this.context;
    }

    @Override
    public void setContext(@Nullable String context) {
        this.context = context;
    }
}
