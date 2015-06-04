package gov.hhs.onc.crigtt.schematron.dto.impl;

import gov.hhs.onc.crigtt.schematron.dto.AssertionDto;
import javax.annotation.Nullable;

public class AssertionDtoImpl extends AbstractCrigttDtoBean implements AssertionDto {
    protected String test;

    @Override
    public boolean isSetTest() {
        return (this.test != null);
    }

    @Nullable
    @Override
    public String getTest() {
        return this.test;
    }

    @Override
    public void setTest(@Nullable String test) {
        this.test = test;
    }
}
