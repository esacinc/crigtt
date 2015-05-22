package gov.hhs.onc.crigtt.context.impl;

import gov.hhs.onc.crigtt.context.CrigttProfiles;
import gov.hhs.onc.crigtt.context.CrigttProperties;
import org.apache.commons.lang3.ClassUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.core.env.ConfigurableEnvironment;

@Order(Ordered.HIGHEST_PRECEDENCE + 1)
public class ProfileApplicationRunListener extends AbstractCrigttApplicationRunListener {
    private final static String WEB_CONTEXT_CLASS_NAME = "org.springframework.web.context.support.GenericWebApplicationContext";

    private final static Logger LOGGER = LoggerFactory.getLogger(ProfileApplicationRunListener.class);

    public ProfileApplicationRunListener(SpringApplication app, String[] args) {
        super(app, args);
    }

    @Override
    public void contextPrepared(ConfigurableApplicationContext appContext) {
        ConfigurableEnvironment env = appContext.getEnvironment();

        if (env.containsProperty(CrigttProperties.APP_NAME_NAME)) {
            activateProfile(env, (CrigttProfiles.APP_PREFIX + env.getProperty(CrigttProperties.APP_NAME_NAME)));
        }

        try {
            Class<?> webContextClass = ClassUtils.getClass(WEB_CONTEXT_CLASS_NAME);

            if (ClassUtils.isAssignable(appContext.getClass(), webContextClass)) {
                activateProfile(env, CrigttProfiles.APP_CONTEXT_WEB);
            }
        } catch (ClassNotFoundException ignored) {
        }
    }

    protected static void activateProfile(ConfigurableEnvironment env, String profileName) {
        env.addActiveProfile(profileName);

        LOGGER.info(String.format("Activated application Spring profile (name=%s).", profileName));
    }
}
