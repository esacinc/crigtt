package gov.hhs.onc.crigtt.beans;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Nullable;

public interface CrigttNamedBean extends CrigttIdentifiedBean {
    public boolean isSetDisplayName();

    @JsonProperty
    @Nullable
    public String getDisplayName();

    public void setDisplayName(@Nullable String displayName);

    public boolean isSetName();

    @JsonProperty
    @Nullable
    public String getName();

    public void setName(@Nullable String name);
}
