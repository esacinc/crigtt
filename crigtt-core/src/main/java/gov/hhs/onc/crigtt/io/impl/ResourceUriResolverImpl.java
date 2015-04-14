package gov.hhs.onc.crigtt.io.impl;

import gov.hhs.onc.crigtt.io.ResourceUriResolver;
import java.io.IOException;
import javax.annotation.Nullable;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.SystemUtils;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;

public class ResourceUriResolverImpl implements ResourceUriResolver {
    private ResourceLoader resourceLoader;
    private Resource[] baseResources;
    private String[] baseResourcePaths;

    public ResourceUriResolverImpl(Resource ... baseResources) {
        this.baseResources = baseResources;
    }

    @Nullable
    @Override
    public Source resolve(String sysId, @Nullable String baseUri) throws TransformerException {
        String relativeResourcePath = StringUtils.strip(sysId, SystemUtils.FILE_SEPARATOR);

        if (baseUri != null) {
            relativeResourcePath = StringUtils.strip(baseUri, SystemUtils.FILE_SEPARATOR) + SystemUtils.FILE_SEPARATOR + relativeResourcePath;
        }

        String resourcePath;
        Resource resource;

        for (String baseResourcePath : this.baseResourcePaths) {
            if (!(resource = this.resourceLoader.getResource((resourcePath = baseResourcePath.concat(relativeResourcePath)))).exists()) {
                continue;
            }

            try {
                return new ResourceSource(resource);
            } catch (IOException e) {
                throw new TransformerException(String.format("Unable to read resource (path=%s).", resourcePath), e);
            }
        }

        return null;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        this.baseResourcePaths = new String[this.baseResources.length];

        String[] baseResourcePathParts;

        for (int a = 0; a < this.baseResources.length; a++) {
            baseResourcePathParts = StringUtils.split(this.baseResources[a].getURL().toExternalForm(), SystemUtils.FILE_SEPARATOR);
            // noinspection ConstantConditions
            baseResourcePathParts[(baseResourcePathParts.length - 1)] = StringUtils.EMPTY;

            this.baseResourcePaths[a] = StringUtils.join(baseResourcePathParts, SystemUtils.FILE_SEPARATOR);
        }
    }

    @Override
    public Resource[] getBaseResources() {
        return this.baseResources;
    }

    @Override
    public String[] getBaseResourcePaths() {
        return this.baseResourcePaths;
    }

    @Override
    public void setResourceLoader(ResourceLoader resourceLoader) {
        this.resourceLoader = resourceLoader;
    }
}
