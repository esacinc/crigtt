package gov.hhs.onc.crigtt.beans.impl;

import gov.hhs.onc.crigtt.beans.CrigttStatusBean;

public abstract class AbstractCrigttStatusBean implements CrigttStatusBean {
    protected boolean status;

    @Override
    public boolean getStatus() {
        return this.status;
    }

    @Override
    public void setStatus(boolean status) {
        this.status = status;
    }
}
