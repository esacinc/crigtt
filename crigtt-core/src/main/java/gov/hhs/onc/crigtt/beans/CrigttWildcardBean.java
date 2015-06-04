package gov.hhs.onc.crigtt.beans;

import com.github.sebhoss.warnings.CompilerWarnings;
import java.util.Arrays;
import java.util.List;

public interface CrigttWildcardBean<T> {
    public void unsetContent();

    public boolean isSetContent();

    public List<T> getContent();

    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public default void setContent(T ... values) {
        this.setContent(Arrays.asList(values));
    }

    public void setContent(List<T> values);
}
