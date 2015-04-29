package gov.hhs.onc.crigtt.api;

import javax.annotation.Nullable;

public interface IdentifiableApiBean extends ApiBean {
    public boolean isSetId();

    @Nullable
    public String getId();

    public void setId(@Nullable String id);
}
