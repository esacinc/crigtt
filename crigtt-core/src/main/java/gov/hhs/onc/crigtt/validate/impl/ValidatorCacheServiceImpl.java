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
    public void putResults(String docHashStr, ValidatorResults results) {
        this.cache.putIfAbsent(docHashStr, results);
    }

    @Nullable
    @Override
    public ValidatorResults getResults(String docHashStr) {
        return this.cache.get(docHashStr, ValidatorResults.class);
    }
}
