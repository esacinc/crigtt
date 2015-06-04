package gov.hhs.onc.crigtt.validate;

import br.net.woodstock.rockframework.security.digest.Digester;
import java.util.Map;
import org.springframework.beans.factory.InitializingBean;

public interface ValidatorService extends InitializingBean {
    public ValidatorResponse validate(ValidatorRequest req) throws Exception;

    public Digester getDigester();

    public void setDigester(Digester digester);

    public Map<String, ValidatorEventLevel> getPhaseLevels();

    public void setPhaseLevels(Map<String, ValidatorEventLevel> phaseLevels);

    public ValidatorSchematron[] getSchematrons();

    public void setSchematrons(ValidatorSchematron ... schematrons);
}
