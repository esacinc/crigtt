package gov.hhs.onc.crigtt.validate;

import javax.annotation.Nullable;

public interface ValidatorCacheService {
    public void putResults(byte[] docHash, ValidatorResults results);

    @Nullable
    public ValidatorResults getResults(byte[] docHash);
}
