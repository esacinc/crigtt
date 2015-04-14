package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedSchematronBean;
import gov.hhs.onc.crigtt.validate.SchematronResultBean;

public abstract class AbstractSchematronResultBean<T extends ResolvedSchematronBean> implements SchematronResultBean<T> {
    protected T bean;

    @Override
    public T getBean() {
        return this.bean;
    }

    @Override
    public void setBean(T bean) {
        this.bean = bean;
    }
}
