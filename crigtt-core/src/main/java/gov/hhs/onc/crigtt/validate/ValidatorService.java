package gov.hhs.onc.crigtt.validate;

import br.net.woodstock.rockframework.security.digest.Digester;
import java.util.Map;
import org.apache.commons.collections4.BidiMap;
import org.springframework.http.MediaType;

public interface ValidatorService {
    public ValidatorReport validate(ValidatorSubmission submission) throws Exception;

    public BidiMap<ValidatorContentType, MediaType> getContentTypes();

    public void setContentTypes(BidiMap<ValidatorContentType, MediaType> contentTypes);

    public Digester getDigester();

    public void setDigester(Digester digester);

    public Map<String, ValidatorEventLevel> getPhaseLevels();

    public void setPhaseLevels(Map<String, ValidatorEventLevel> phaseLevels);

    public ValidatorSchematron[] getSchematrons();

    public void setSchematrons(ValidatorSchematron ... schematrons);
}
