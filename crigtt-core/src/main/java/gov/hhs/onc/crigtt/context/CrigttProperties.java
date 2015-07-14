package gov.hhs.onc.crigtt.context;

public final class CrigttProperties {
    public final static String PREFIX = "crigtt.";
    public final static String APP_PREFIX = PREFIX + "app.";
    public final static String CATALINA_PREFIX = "catalina.";
    public final static String LOGGING_PREFIX = PREFIX + "logging.";
    public final static String LOGGING_FILE_PREFIX = LOGGING_PREFIX + "file.";

    public final static String NAME_SUFFIX = "name";

    public final static String APP_NAME_NAME = APP_PREFIX + NAME_SUFFIX;

    public final static String CATALINA_BASE_NAME = CATALINA_PREFIX + "base";

    public final static String LOGGING_FILE_DIR_NAME = LOGGING_FILE_PREFIX + "dir";
    public final static String LOGGING_FILE_NAME_NAME = LOGGING_FILE_PREFIX + NAME_SUFFIX;

    private CrigttProperties() {
    }
}
