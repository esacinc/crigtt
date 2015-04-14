package gov.hhs.onc.crigtt.io.impl;

import java.io.IOException;
import javax.annotation.Nullable;
import org.springframework.core.io.Resource;

public class ResourceSource extends AbstractCrigttSource {
    private Resource resource;

    public ResourceSource(Resource resource) throws IOException {
        this(resource, null);
    }

    public ResourceSource(Resource resource, @Nullable String sysId) throws IOException {
        super(resource.getInputStream(), ((sysId != null) ? sysId : resource.getURL().toExternalForm()));

        this.resource = resource;
    }

    public Resource getResource() {
        return this.resource;
    }
}
