package gov.hhs.onc.crigtt.data.cache.impl;

import java.util.Optional;
import java.util.stream.Stream;
import net.sf.ehcache.Cache;
import net.sf.ehcache.config.CacheConfiguration;
import net.sf.ehcache.config.PersistenceConfiguration;
import net.sf.ehcache.config.PersistenceConfiguration.Strategy;
import net.sf.ehcache.config.SearchAttribute;
import net.sf.ehcache.config.Searchable;
import net.sf.ehcache.event.CacheEventListener;
import net.sf.ehcache.event.RegisteredEventListeners;
import org.apache.commons.lang3.ArrayUtils;
import org.springframework.cache.ehcache.EhCacheCacheManager;

public class CrigttCacheFactoryBean extends AbstractCrigttCacheComponentFactoryBean<CrigttCache, CacheConfiguration> {
    private CacheEventListener[] listeners;
    private Strategy persistenceStrategy;
    private SearchAttribute[] searchAttrs;

    public CrigttCacheFactoryBean() {
        super(CrigttCache.class);
    }

    @Override
    public CrigttCache getObject() throws Exception {
        String name = this.config.getName();

        if (name == null) {
            this.config.setName((name = this.beanName));
        }

        Optional.ofNullable(this.maxBytesLocalDisk).ifPresent(this.config::setMaxBytesLocalDisk);
        Optional.ofNullable(this.maxBytesLocalHeap).ifPresent(this.config::setMaxBytesLocalHeap);
        Optional.ofNullable(this.maxBytesLocalOffHeap).ifPresent(this.config::setMaxBytesLocalOffHeap);
        Optional.ofNullable(this.persistenceStrategy).ifPresent(
            persistenceStrategy -> this.config.addPersistence(new PersistenceConfiguration().strategy(persistenceStrategy)));

        if (!ArrayUtils.isEmpty(this.searchAttrs)) {
            Searchable searchable = new Searchable();
            searchable.setKeys(false);
            searchable.setValues(false);

            Stream.of(this.searchAttrs).forEach(searchable::addSearchAttribute);

            this.config.addSearchable(searchable);
        }

        Cache cache = new Cache(this.config);
        cache.setName(name);
        cache.setCacheManager(this.manager.getCacheManager());

        if (!ArrayUtils.isEmpty(this.listeners)) {
            RegisteredEventListeners registeredListeners = cache.getCacheEventNotificationService();

            Stream.of(this.listeners).forEach(registeredListeners::registerListener);
        }

        cache.initialise();

        return new CrigttCache(cache);
    }

    public CacheEventListener[] getListeners() {
        return this.listeners;
    }

    public void setListeners(CacheEventListener ... listeners) {
        this.listeners = listeners;
    }

    public EhCacheCacheManager getManager() {
        return this.manager;
    }

    public void setManager(EhCacheCacheManager manager) {
        this.manager = manager;
    }

    public Strategy getPersistenceStrategy() {
        return this.persistenceStrategy;
    }

    public void setPersistenceStrategy(Strategy persistenceStrategy) {
        this.persistenceStrategy = persistenceStrategy;
    }

    public SearchAttribute[] getSearchAttributes() {
        return this.searchAttrs;
    }

    public void setSearchAttributes(SearchAttribute ... searchAttrs) {
        this.searchAttrs = searchAttrs;
    }
}
