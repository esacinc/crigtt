package gov.hhs.onc.crigtt.cache.impl;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.config.CacheConfiguration;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.cache.ehcache.EhCacheCache;
import org.springframework.cache.ehcache.EhCacheFactoryBean;

public class CrigttEhCacheFactoryBean implements FactoryBean<EhCacheCache> {
    private class InternalEhCacheFactoryBean extends EhCacheFactoryBean {
        @Override
        protected Cache createCache() {
            return new Cache(CrigttEhCacheFactoryBean.this.config);
        }
    }

    private CacheConfiguration config;
    private CacheManager manager;

    @Override
    public EhCacheCache getObject() throws Exception {
        InternalEhCacheFactoryBean cacheFactory = new InternalEhCacheFactoryBean();
        cacheFactory.setCacheManager(this.manager);
        cacheFactory.setCacheName(this.config.getName());
        cacheFactory.afterPropertiesSet();

        return new EhCacheCache(cacheFactory.getObject());
    }

    public CacheConfiguration getConfiguration() {
        return this.config;
    }

    public void setConfiguration(CacheConfiguration config) {
        this.config = config;
    }

    public CacheManager getManager() {
        return this.manager;
    }

    public void setManager(CacheManager manager) {
        this.manager = manager;
    }

    @Override
    public Class<?> getObjectType() {
        return EhCacheCache.class;
    }

    @Override
    public boolean isSingleton() {
        return true;
    }
}
