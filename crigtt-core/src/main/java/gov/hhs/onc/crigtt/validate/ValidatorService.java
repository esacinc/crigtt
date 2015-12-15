package gov.hhs.onc.crigtt.validate;

import java.security.Provider;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.InitializingBean;

public interface ValidatorService extends BeanFactoryAware, InitializingBean {
    public ValidatorReport validate(ValidatorSubmission submission) throws Exception;

    public String getDigestAlgorithm();

    public void setDigestAlgorithm(String digestAlg);

    public Provider getDigestProvider();

    public void setDigestProvider(Provider digestProv);

    public String[] getCecTaskBeanNames();

    public void setCecTaskBeanNames(String... cecTaskBeanNames);

    public String[] getHqrTaskBeanNames();

    public void setHqrTaskBeanNames(String... hqrTaskBeanNames);

    public String[] getPqrsTaskBeanNames();

    public void setPqrsTaskBeanNames(String... pqrsTaskBeanNames);
}
