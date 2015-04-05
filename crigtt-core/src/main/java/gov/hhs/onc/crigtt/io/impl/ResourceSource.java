package gov.hhs.onc.crigtt.io.impl;

import java.io.IOException;
import javax.xml.transform.stream.StreamSource;
import org.springframework.core.io.Resource;

public class ResourceSource extends StreamSource {
    private Resource resource;

    public ResourceSource(Resource resource) throws IOException {
        super(resource.getInputStream(), resource.getURL().toExternalForm());

        this.resource = resource;
    }

    public Resource getResource() {
        return this.resource;
    }
}
