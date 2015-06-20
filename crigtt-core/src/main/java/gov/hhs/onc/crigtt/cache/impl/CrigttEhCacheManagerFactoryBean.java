package gov.hhs.onc.crigtt.cache.impl;

import net.sf.ehcache.CacheManager;
import net.sf.ehcache.config.Configuration;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.cache.ehcache.EhCacheCacheManager;

public class CrigttEhCacheManagerFactoryBean implements DisposableBean, FactoryBean<EhCacheCacheManager> {
    private Configuration config;
    private EhCacheCacheManager cacheManager;

    @Override
    public void destroy() throws Exception {
        this.cacheManager.getCacheManager().shutdown();
    }

    @Override
    public EhCacheCacheManager getObject() throws Exception {
        return (this.cacheManager = new EhCacheCacheManager(new CacheManager(this.config)));
    }

    public Configuration getConfiguration() {
        return this.config;
    }

    public void setConfiguration(Configuration config) {
        this.config = config;
    }

    @Override
    public Class<?> getObjectType() {
        return EhCacheCacheManager.class;
    }

    @Override
    public boolean isSingleton() {
        return true;
    }
}
