package gov.hhs.onc.crigtt.beans.impl;

import gov.hhs.onc.crigtt.beans.CrigttNamedBean;
import javax.annotation.Nullable;

public abstract class AbstractCrigttNamedBean extends AbstractCrigttIdentifiedBean implements CrigttNamedBean {
    protected String displayName;
    protected String name;

    @Override
    public boolean isSetDisplayName() {
        return (this.displayName != null);
    }

    @Nullable
    @Override
    public String getDisplayName() {
        return this.displayName;
    }

    @Override
    public void setDisplayName(@Nullable String displayName) {
        this.displayName = displayName;
    }

    @Override
    public boolean isSetName() {
        return (this.name != null);
    }

    @Nullable
    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(@Nullable String name) {
        this.name = name;
    }
}
