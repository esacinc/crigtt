package gov.hhs.onc.crigtt.io.impl;

import java.io.IOException;
import javax.annotation.Nullable;
import org.springframework.core.io.WritableResource;

public class ResourceResult extends AbstractCrigttResult {
    private WritableResource resource;

    public ResourceResult(WritableResource resource) throws IOException {
        this(resource, null);
    }

    public ResourceResult(WritableResource resource, @Nullable String sysId) throws IOException {
        super(resource.getOutputStream(), sysId);

        this.resource = resource;
    }

    public WritableResource getResource() {
        return this.resource;
    }
}
