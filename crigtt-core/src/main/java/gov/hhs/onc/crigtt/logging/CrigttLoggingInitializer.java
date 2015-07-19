package gov.hhs.onc.crigtt.logging;

import ch.qos.logback.classic.LoggerContext;
import java.io.File;

public interface CrigttLoggingInitializer {
    public void postProcessContext(LoggerContext loggerContext);
    
    public String buildLogFileName();

    public File buildLogDirectory();
}
