package gov.hhs.onc.crigtt.validate;

import javax.annotation.Nullable;

public interface ValidatorCacheService {
    public void putResults(String docHashStr, ValidatorResults results);

    @Nullable
    public ValidatorResults getResults(String docHashStr);
}
