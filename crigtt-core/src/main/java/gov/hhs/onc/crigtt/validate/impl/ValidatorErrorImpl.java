package gov.hhs.onc.crigtt.validate.impl;

import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.ValidatorError;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;

@JsonTypeName("validatorError")
public class ValidatorErrorImpl implements ValidatorError {
    private String msg;
    private List<String> stackTrace = new ArrayList<>();

    @Override
    public boolean isSetMessage() {
        return (this.msg != null);
    }

    @Nullable
    @Override
    public String getMessage() {
        return this.msg;
    }

    @Override
    public void setMessage(@Nullable String msg) {
        this.msg = msg;
    }

    @Override
    public List<String> getStackTrace() {
        return this.stackTrace;
    }

    @Override
    public void setStackTrace(List<String> stackTrace) {
        this.stackTrace.clear();
        this.stackTrace.addAll(stackTrace);
    }
}
