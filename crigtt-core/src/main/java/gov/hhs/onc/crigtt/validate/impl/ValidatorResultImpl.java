package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.CrigttSchematron;
import gov.hhs.onc.crigtt.validate.SchematronValidatorResult;
import gov.hhs.onc.crigtt.validate.ValidatorResult;
import java.util.Map;

public class ValidatorResultImpl implements ValidatorResult {
    private Map<CrigttSchematron, SchematronValidatorResult> schematronResults;

    @Override
    public Map<CrigttSchematron, SchematronValidatorResult> getSchematronResults() {
        return this.schematronResults;
    }

    @Override
    public void setSchematronResults(Map<CrigttSchematron, SchematronValidatorResult> schematronResults) {
        this.schematronResults = schematronResults;
    }
}
