package gov.hhs.onc.crigtt.validate;

import javax.annotation.Nullable;

public interface ValidatorCache {
    public void putResult(String hash, ValidatorContentType contentType, ValidatorResult result);

    @Nullable
    public ValidatorResult getResult(String hash, ValidatorContentType contentType);

    public boolean containsResult(String hash, ValidatorContentType contentType);
}
