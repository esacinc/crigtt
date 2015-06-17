package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.ValidatorCache;
import gov.hhs.onc.crigtt.validate.ValidatorContentType;
import gov.hhs.onc.crigtt.validate.ValidatorResult;
import java.util.EnumMap;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.Nullable;
import org.springframework.stereotype.Component;

@Component("validatorCacheImpl")
public class ValidatorCacheImpl implements ValidatorCache {
    private ConcurrentHashMap<String, EnumMap<ValidatorContentType, ValidatorResult>> results = new ConcurrentHashMap<>();

    @Override
    public void putResult(String hash, ValidatorContentType contentType, ValidatorResult result) {
        if (!this.results.containsKey(hash)) {
            this.results.put(hash, new EnumMap<>(ValidatorContentType.class));
        }

        result.setCached(true);

        this.results.get(hash).put(contentType, result);
    }

    @Nullable
    @Override
    public ValidatorResult getResult(String hash, ValidatorContentType contentType) {
        return (this.containsResult(hash, contentType) ? this.results.get(hash).get(contentType) : null);
    }

    @Override
    public boolean containsResult(String hash, ValidatorContentType contentType) {
        return (this.results.containsKey(hash) && this.results.get(hash).containsKey(contentType));
    }
}
