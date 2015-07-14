package gov.hhs.onc.crigtt.context.impl;

import gov.hhs.onc.crigtt.context.CrigttMetadataInitializer;
import gov.hhs.onc.crigtt.context.CrigttProperties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

@Order(Ordered.HIGHEST_PRECEDENCE)
public class MetadataApplicationRunListener extends AbstractCrigttApplicationRunListener {
    private static class DefaultMetadataInitializer extends AbstractCrigttMetadataInitializer {
        public final static DefaultMetadataInitializer INSTANCE = new DefaultMetadataInitializer();

        public DefaultMetadataInitializer() {
            super("crigtt");
        }
    }

    private final static Logger LOGGER = LoggerFactory.getLogger(MetadataApplicationRunListener.class);

    public MetadataApplicationRunListener(SpringApplication app, String[] args) {
        super(app, args);
    }

    @Override
    public void started() {
        String appName = buildInitializer(CrigttMetadataInitializer.class, () -> DefaultMetadataInitializer.INSTANCE).buildApplicationName();

        System.setProperty(CrigttProperties.APP_NAME_NAME, appName);

        LOGGER.info(String.format("Initialized application metadata (name=%s).", appName));
    }
}
