package gov.hhs.onc.crigtt.validate;

import br.net.woodstock.rockframework.security.digest.Digester;
import javax.annotation.Nullable;

public interface ValidatorServiceInterceptor {
    public ValidatorResponse postProcess(ValidatorRequest req, ValidatorResponse resp);
    
    public ValidatorResponse postProcess(ValidatorRequest req, ValidatorResponse resp, @Nullable Exception exception);
    
    public ValidatorResponse preProcess(ValidatorRequest req);
    
    public Digester getDigester();

    public void setDigester(Digester digester);
}
