package gov.hhs.onc.crigtt.cli.logging.impl;

import ch.qos.logback.classic.LoggerContext;
import gov.hhs.onc.crigtt.context.CrigttProperties;
import gov.hhs.onc.crigtt.logging.impl.AbstractCrigttLoggingInitializer;
import java.nio.file.Paths;
import javax.annotation.Nullable;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

@Order(Ordered.HIGHEST_PRECEDENCE + 1)
public class CliLoggingInitializer extends AbstractCrigttLoggingInitializer {
    private final static String LOG_DIR_PATH = "logs";

    public CliLoggingInitializer(LoggerContext loggerContext, String defaultLogFileName) {
        super(loggerContext, defaultLogFileName);
    }

    @Nullable
    @Override
    protected String buildLogDirectoryPath() {
        String logDirPath = super.buildLogDirectoryPath();

        return ((logDirPath != null) ? logDirPath : Paths.get(System.getProperty(CrigttProperties.APP_HOME_NAME), LOG_DIR_PATH).toString());
    }
}
