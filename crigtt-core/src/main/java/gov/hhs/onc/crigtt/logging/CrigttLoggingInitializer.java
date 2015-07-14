package gov.hhs.onc.crigtt.logging;

import java.io.File;

public interface CrigttLoggingInitializer {
    public String buildLogFileName();

    public File buildLogDirectory();
}
