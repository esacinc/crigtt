package gov.hhs.onc.crigtt.context.impl;

import gov.hhs.onc.crigtt.context.CrigttMetadataInitializer;
import gov.hhs.onc.crigtt.context.CrigttProperties;
import org.apache.commons.lang3.StringUtils;
import org.springframework.context.ApplicationContextException;

public abstract class AbstractCrigttMetadataInitializer implements CrigttMetadataInitializer {
    protected String defaultAppName;

    protected AbstractCrigttMetadataInitializer(String defaultAppName) {
        this.defaultAppName = defaultAppName;
    }

    @Override
    public String buildApplicationName() {
        String appName = System.getProperty(CrigttProperties.APP_NAME_NAME, this.defaultAppName);

        if (StringUtils.isBlank(appName)) {
            throw new ApplicationContextException(String.format("Invalid application name (%s).", appName));
        }

        return appName;
    }
}
