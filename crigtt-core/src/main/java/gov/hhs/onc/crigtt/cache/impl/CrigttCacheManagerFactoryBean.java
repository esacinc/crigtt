package gov.hhs.onc.crigtt.cache.impl;

import java.io.File;
import java.util.Optional;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.config.Configuration;
import net.sf.ehcache.config.DiskStoreConfiguration;
import org.springframework.beans.FatalBeanException;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.cache.ehcache.EhCacheCacheManager;

public class CrigttCacheManagerFactoryBean extends AbstractCrigttCacheComponentFactoryBean<EhCacheCacheManager, Configuration> implements DisposableBean {
    private DiskStoreConfiguration diskStoreConfig;

    public CrigttCacheManagerFactoryBean() {
        super(EhCacheCacheManager.class);
    }

    @Override
    public void destroy() throws Exception {
        this.manager.getCacheManager().shutdown();
    }

    @Override
    public EhCacheCacheManager getObject() throws Exception {
        String name = this.config.getName();

        if (name == null) {
            this.config.setName((name = this.beanName));
        }

        if (this.diskStoreConfig != null) {
            File diskStoreDir = new File(this.diskStoreConfig.getPath());

            if (!diskStoreDir.exists()) {
                if (!diskStoreDir.mkdirs()) {
                    throw new FatalBeanException(String.format("Unable to create cache manager (name=%s) disk store directory (path=%s).", name,
                        diskStoreDir.getPath()));
                }
            } else if (!diskStoreDir.isDirectory()) {
                throw new FatalBeanException(String.format("Cache manager (name=%s) disk store directory (path=%s) is not a directory.", name,
                    diskStoreDir.getPath()));
            }

            this.config.addDiskStore(this.diskStoreConfig);
        }

        Optional.ofNullable(this.maxBytesLocalDisk).ifPresent(this.config::setMaxBytesLocalDisk);
        Optional.ofNullable(this.maxBytesLocalHeap).ifPresent(this.config::setMaxBytesLocalHeap);
        Optional.ofNullable(this.maxBytesLocalOffHeap).ifPresent(this.config::setMaxBytesLocalOffHeap);
        Optional.ofNullable(this.sizeOfPolicyConfig).ifPresent(this.config::addSizeOfPolicy);

        return (this.manager = new EhCacheCacheManager(new CacheManager(this.config)));
    }

    public DiskStoreConfiguration getDiskStoreConfiguration() {
        return this.diskStoreConfig;
    }

    public void setDiskStoreConfiguration(DiskStoreConfiguration diskStoreConfig) {
        this.diskStoreConfig = diskStoreConfig;
    }
}
