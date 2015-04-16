package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.api.schematron.ResolvedSchematronBean;

public interface SchematronResultBean<T extends ResolvedSchematronBean> {
    public T getBean();
}
