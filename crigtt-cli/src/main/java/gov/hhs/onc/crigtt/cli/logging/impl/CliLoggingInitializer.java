package gov.hhs.onc.crigtt.cli.logging.impl;

import ch.qos.logback.classic.LoggerContext;
import gov.hhs.onc.crigtt.logging.impl.AbstractCrigttLoggingInitializer;
import java.nio.file.Paths;
import javax.annotation.Nullable;
import org.apache.commons.lang3.SystemUtils;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

@Order(Ordered.HIGHEST_PRECEDENCE)
public class CliLoggingInitializer extends AbstractCrigttLoggingInitializer {
    private final static String LOG_DIR_PATH = "logs";

    public CliLoggingInitializer(LoggerContext loggerContext, String defaultLogFileName) {
        super(loggerContext, defaultLogFileName);
    }

    @Nullable
    @Override
    protected String buildLogDirectoryPath() {
        String logDirPath = super.buildLogDirectoryPath();

        return ((logDirPath != null) ? logDirPath : Paths.get(SystemUtils.USER_DIR, LOG_DIR_PATH).toString());
    }
}
