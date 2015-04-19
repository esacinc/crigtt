package gov.hhs.onc.crigtt.validate;

import javax.annotation.Nullable;

public interface CrigttValidationResponse {
    public boolean hasException();

    @Nullable
    public Throwable getException();

    public void setException(@Nullable Throwable exception);

    public boolean isSuccess();

    public void setSuccess(boolean success);
}
