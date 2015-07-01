package gov.hhs.onc.crigtt.validate.render;

import org.apache.commons.collections4.keyvalue.MultiKey;

public final class ValidatorRenderOptions {
    public final static String FORMAT_NAME = "format";
    public final static MultiKey<String> FORMAT_CONTEXT_DATA_KEY = new MultiKey<>(FORMAT_NAME, ValidatorRenderOptions.class.getName());

    public final static String TIME_ZONE_NAME = "timeZone";
    public final static MultiKey<String> TIME_ZONE_CONTEXT_DATA_KEY = new MultiKey<>(TIME_ZONE_NAME, ValidatorRenderOptions.class.getName());

    private ValidatorRenderOptions() {
    }
}
