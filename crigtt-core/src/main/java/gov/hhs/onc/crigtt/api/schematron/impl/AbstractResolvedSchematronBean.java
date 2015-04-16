package gov.hhs.onc.crigtt.api.schematron.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedSchematronBean;

public abstract class AbstractResolvedSchematronBean implements ResolvedSchematronBean {
    protected String id;

    protected AbstractResolvedSchematronBean(String id) {
        this.id = id;
    }

    @Override
    public String getId() {
        return this.id;
    }
}
