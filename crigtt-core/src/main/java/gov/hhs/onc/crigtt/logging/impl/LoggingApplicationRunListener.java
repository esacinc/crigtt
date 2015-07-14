package gov.hhs.onc.crigtt.logging.impl;

import ch.qos.logback.classic.LoggerContext;
import ch.qos.logback.classic.util.ContextInitializer;
import ch.qos.logback.classic.util.ContextSelectorStaticBinder;
import ch.qos.logback.core.joran.spi.JoranException;
import ch.qos.logback.core.status.Status;
import ch.qos.logback.core.status.StatusManager;
import ch.qos.logback.core.status.StatusUtil;
import ch.qos.logback.core.util.StatusPrinter;
import gov.hhs.onc.crigtt.context.CrigttProperties;
import gov.hhs.onc.crigtt.context.impl.AbstractCrigttApplicationRunListener;
import gov.hhs.onc.crigtt.io.CrigttFileExtensions;
import gov.hhs.onc.crigtt.logging.CrigttLoggingInitializer;
import java.io.FileNotFoundException;
import java.net.URL;
import org.apache.commons.io.FilenameUtils;
import org.springframework.boot.SpringApplication;
import org.springframework.context.ApplicationContextException;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.util.ResourceUtils;

@Order(Ordered.HIGHEST_PRECEDENCE + 1)
public class LoggingApplicationRunListener extends AbstractCrigttApplicationRunListener {
    private static class DefaultLoggingInitializer extends AbstractCrigttLoggingInitializer {
        public DefaultLoggingInitializer(LoggerContext loggerContext, String defaultLogFileName) {
            super(loggerContext, defaultLogFileName);
        }
    }

    private final static String LOGBACK_CONFIG_FILE_URL_PATH_PREFIX = ResourceUtils.CLASSPATH_URL_PREFIX + "META-INF/crigtt/logback/logback-";

    public LoggingApplicationRunListener(SpringApplication app, String[] args) {
        super(app, args);
    }

    @Override
    public void started() {
        LoggerContext loggerContext = ContextSelectorStaticBinder.getSingleton().getContextSelector().getLoggerContext();

        loggerContext.stop();
        loggerContext.reset();

        String appName = System.getProperty(CrigttProperties.APP_NAME_NAME), appFileNamePrefix = appName + FilenameUtils.EXTENSION_SEPARATOR, defaultLogFileName =
            appFileNamePrefix + CrigttFileExtensions.LOG;
        CrigttLoggingInitializer loggingInit =
            buildInitializer(CrigttLoggingInitializer.class, () -> new DefaultLoggingInitializer(loggerContext, defaultLogFileName), loggerContext,
                defaultLogFileName);

        loggerContext.putProperty(CrigttProperties.APP_NAME_NAME, appName);
        loggerContext.putProperty(CrigttProperties.LOGGING_FILE_DIR_NAME, loggingInit.buildLogDirectory().getPath());
        loggerContext.putProperty(CrigttProperties.LOGGING_FILE_NAME_NAME, loggingInit.buildLogFileName());

        String configFileUrlPath = LOGBACK_CONFIG_FILE_URL_PATH_PREFIX + appFileNamePrefix + CrigttFileExtensions.XML;
        URL configFileUrl;

        try {
            new ContextInitializer(loggerContext).configureByResource((configFileUrl = ResourceUtils.getURL(configFileUrlPath)));
        } catch (FileNotFoundException e) {
            throw new ApplicationContextException(String.format("Unable to find Logback configuration file (path=%s).", configFileUrlPath), e);
        } catch (JoranException e) {
            throw new ApplicationContextException(String.format("Unable to initialize Logback using configuration file (path=%s).", configFileUrlPath), e);
        }

        StatusManager statusManager = loggerContext.getStatusManager();
        StatusUtil statusUtil = new StatusUtil(statusManager);
        long lastResetTime = statusUtil.timeOfLastReset();

        if (statusUtil.getHighestLevel(lastResetTime) >= Status.WARN) {
            StatusPrinter.print(statusManager, lastResetTime);

            throw new ApplicationContextException(String.format("Unable to initialize Logback using configuration file (path=%s).", configFileUrlPath));
        }

        loggerContext.getLogger(LoggingApplicationRunListener.class).info(
            String.format("Logging initialized (initializerClass=%s, configFileUrl=%s).", loggingInit.getClass().getName(), configFileUrl.toString()));
    }
}
