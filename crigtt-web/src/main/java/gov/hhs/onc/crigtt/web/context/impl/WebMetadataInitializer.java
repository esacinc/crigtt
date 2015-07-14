package gov.hhs.onc.crigtt.web.context.impl;

import gov.hhs.onc.crigtt.context.impl.AbstractCrigttMetadataInitializer;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

@Order(Ordered.HIGHEST_PRECEDENCE)
public class WebMetadataInitializer extends AbstractCrigttMetadataInitializer {
    public WebMetadataInitializer() {
        super("crigtt-web");
    }
}
