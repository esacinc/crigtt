package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.ValidatorCacheService;
import gov.hhs.onc.crigtt.validate.ValidatorResults;
import javax.annotation.Nullable;
import javax.annotation.Resource;
import org.springframework.cache.ehcache.EhCacheCache;
import org.springframework.stereotype.Component;

@Component("validatorCacheServiceImpl")
public class ValidatorCacheServiceImpl implements ValidatorCacheService {
    @Resource(name = "cacheValidator")
    private EhCacheCache cache;

    @Override
    public void putResults(byte[] docHash, ValidatorResults results) {
        this.cache.putIfAbsent(docHash, results);
    }

    @Nullable
    @Override
    public ValidatorResults getResults(byte[] docHash) {
        return this.cache.get(docHash, ValidatorResults.class);
    }
}
