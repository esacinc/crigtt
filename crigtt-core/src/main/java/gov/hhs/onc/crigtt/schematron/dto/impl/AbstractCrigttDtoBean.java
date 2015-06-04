package gov.hhs.onc.crigtt.schematron.dto.impl;

import gov.hhs.onc.crigtt.beans.impl.AbstractCrigttNamedBean;
import gov.hhs.onc.crigtt.schematron.dto.CrigttDtoBean;
import java.util.List;
import javax.annotation.Nullable;
import org.apache.commons.collections4.CollectionUtils;

public abstract class AbstractCrigttDtoBean extends AbstractCrigttNamedBean implements CrigttDtoBean {
    protected List<String> text;

    @Override
    public boolean isSetText() {
        return !CollectionUtils.isEmpty(this.text);
    }

    @Nullable
    @Override
    public List<String> getText() {
        return this.text;
    }

    @Override
    public void setText(@Nullable List<String> text) {
        this.text = text;
    }
}
