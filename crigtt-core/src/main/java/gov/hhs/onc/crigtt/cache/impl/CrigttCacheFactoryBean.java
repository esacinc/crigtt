package gov.hhs.onc.crigtt.cache.impl;

import java.util.Optional;
import net.sf.ehcache.Cache;
import net.sf.ehcache.config.CacheConfiguration;
import net.sf.ehcache.config.PersistenceConfiguration;
import org.springframework.cache.ehcache.EhCacheCache;
import org.springframework.cache.ehcache.EhCacheCacheManager;
import org.springframework.cache.ehcache.EhCacheFactoryBean;

public class CrigttCacheFactoryBean extends AbstractCrigttCacheComponentFactoryBean<EhCacheCache, CacheConfiguration> {
    private PersistenceConfiguration persistenceConfig;

    public CrigttCacheFactoryBean() {
        super(EhCacheCache.class);
    }

    @Override
    public EhCacheCache getObject() throws Exception {
        String name = this.config.getName();

        if (name == null) {
            this.config.setName((name = this.beanName));
        }

        Optional.ofNullable(this.maxBytesLocalDisk).ifPresent(this.config::setMaxBytesLocalDisk);
        Optional.ofNullable(this.maxBytesLocalHeap).ifPresent(this.config::setMaxBytesLocalHeap);
        Optional.ofNullable(this.maxBytesLocalOffHeap).ifPresent(this.config::setMaxBytesLocalOffHeap);
        Optional.ofNullable(this.persistenceConfig).ifPresent(this.config::addPersistence);
        Optional.ofNullable(this.sizeOfPolicyConfig).ifPresent(this.config::addSizeOfPolicy);
        
        Cache cache = new Cache(this.config);
        cache.setName(name);
        cache.setCacheManager(this.manager.getCacheManager());
        
        cache.initialise();

        return new EhCacheCache(cache);
    }

    public EhCacheCacheManager getManager() {
        return this.manager;
    }

    public void setManager(EhCacheCacheManager manager) {
        this.manager = manager;
    }

    public PersistenceConfiguration getPersistenceConfiguration() {
        return this.persistenceConfig;
    }

    public void setPersistenceConfiguration(PersistenceConfiguration persistenceConfig) {
        this.persistenceConfig = persistenceConfig;
    }
}
