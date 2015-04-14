package gov.hhs.onc.crigtt.io;

import javax.xml.transform.URIResolver;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.ResourceLoaderAware;
import org.springframework.core.io.Resource;

public interface ResourceUriResolver extends InitializingBean, ResourceLoaderAware, URIResolver {
    public Resource[] getBaseResources();

    public String[] getBaseResourcePaths();
}
