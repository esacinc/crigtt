package gov.hhs.onc.crigtt.validate;

import br.net.woodstock.rockframework.security.digest.Digester;
import org.springframework.beans.factory.BeanFactoryAware;

public interface ValidatorService extends BeanFactoryAware {
    public ValidatorReport validate(ValidatorSubmission submission) throws Exception;

    public Digester getDigester();

    public void setDigester(Digester digester);

    public String[] getTaskBeanNames();

    public void setTaskBeanNames(String ... taskBeanNames);
}
