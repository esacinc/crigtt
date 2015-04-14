package gov.hhs.onc.crigtt.validate;

import java.util.Map;

public interface ValidatorResult {
    public Map<CrigttSchematron, SchematronValidatorResult> getSchematronResults();

    public void setSchematronResults(Map<CrigttSchematron, SchematronValidatorResult> schematronResults);
}
