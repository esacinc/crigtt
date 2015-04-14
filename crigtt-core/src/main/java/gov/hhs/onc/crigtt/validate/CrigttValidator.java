package gov.hhs.onc.crigtt.validate;

import javax.xml.transform.Source;

public interface CrigttValidator {
    public ValidatorResult validate(Source docSrc) throws Exception;

    public CrigttSchematron[] getSchematrons();

    public void setSchematrons(CrigttSchematron ... schematrons);
}
