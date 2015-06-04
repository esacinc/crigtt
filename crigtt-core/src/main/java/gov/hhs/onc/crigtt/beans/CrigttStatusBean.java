package gov.hhs.onc.crigtt.beans;

import com.fasterxml.jackson.annotation.JsonProperty;

public interface CrigttStatusBean {
    @JsonProperty
    public boolean getStatus();

    public void setStatus(boolean status);
}
