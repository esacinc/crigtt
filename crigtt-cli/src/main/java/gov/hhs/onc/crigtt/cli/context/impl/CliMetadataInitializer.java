package gov.hhs.onc.crigtt.cli.context.impl;

import gov.hhs.onc.crigtt.context.impl.AbstractCrigttMetadataInitializer;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

@Order(Ordered.HIGHEST_PRECEDENCE)
public class CliMetadataInitializer extends AbstractCrigttMetadataInitializer {
    public CliMetadataInitializer() {
        super("crigtt-cli");
    }
}
