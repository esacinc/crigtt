package gov.hhs.onc.crigtt.validate;

import java.util.Map;
import org.springframework.beans.factory.InitializingBean;

public interface ValidatorService extends InitializingBean {
    public ValidatorResponse validate(ValidatorRequest req, ValidatorResponse resp) throws Exception;

    public Map<String, ValidatorEventLevel> getPhaseLevels();

    public void setPhaseLevels(Map<String, ValidatorEventLevel> phaseLevels);

    public ValidatorSchematron[] getSchematrons();

    public void setSchematrons(ValidatorSchematron ... schematrons);
}
