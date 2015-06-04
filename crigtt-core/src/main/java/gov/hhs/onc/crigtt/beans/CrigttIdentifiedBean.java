package gov.hhs.onc.crigtt.beans;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Nullable;

public interface CrigttIdentifiedBean {
    public boolean isSetId();

    @JsonProperty
    @Nullable
    public String getId();

    public void setId(@Nullable String id);
}
