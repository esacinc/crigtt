package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.CrigttValidationResponse;
import javax.annotation.Nullable;

public abstract class AbstractCrigttValidationResponse implements CrigttValidationResponse {
    protected Throwable exception;
    protected boolean success;

    @Override
    public boolean hasException() {
        return (this.exception != null);
    }

    @Nullable
    @Override
    public Throwable getException() {
        return this.exception;
    }

    @Override
    public void setException(@Nullable Throwable exception) {
        this.exception = exception;
    }

    @Override
    public boolean isSuccess() {
        return this.success;
    }

    @Override
    public void setSuccess(boolean success) {
        this.success = success;
    }
}
