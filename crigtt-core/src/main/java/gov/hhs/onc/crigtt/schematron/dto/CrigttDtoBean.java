package gov.hhs.onc.crigtt.schematron.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import gov.hhs.onc.crigtt.beans.CrigttNamedBean;
import java.util.List;
import javax.annotation.Nullable;

public interface CrigttDtoBean extends CrigttNamedBean {
    public boolean isSetText();

    @JsonProperty
    @Nullable
    public List<String> getText();

    public void setText(@Nullable List<String> text);
}
