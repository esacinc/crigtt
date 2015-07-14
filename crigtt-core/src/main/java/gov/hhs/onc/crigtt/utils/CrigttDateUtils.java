package gov.hhs.onc.crigtt.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

public final class CrigttDateUtils {
    public final static String CONDENSED_FORMAT_PATTERN = "yyyy-MM-dd_HHmmss_Z";
    public final static DateFormat CONDENSED_FORMAT = new SimpleDateFormat(CONDENSED_FORMAT_PATTERN);

    public final static String DISPLAY_FORMAT_PATTERN = "yyyy-MM-dd HH:mm:ss Z";
    public final static DateFormat DISPLAY_FORMAT = new SimpleDateFormat(DISPLAY_FORMAT_PATTERN);

    private CrigttDateUtils() {
    }
}
