package gov.hhs.onc.crigtt.transform;

public final class CrigttContextDataNames {
    public final static String PREFIX = "crigtt.context.data.";
    public final static String VALIDATE_PREFIX = PREFIX + "validate.";
    public final static String VALIDATE_RENDER_PREFIX = VALIDATE_PREFIX + "render.";
    public final static String VALIDATE_VOCAB_PREFIX = VALIDATE_PREFIX + "vocab.";
    public final static String VALIDATE_VOCAB_STATIC_PREFIX = VALIDATE_VOCAB_PREFIX + "static.";

    public final static String EXPECTED_SUFFIX = ".expected";
    public final static String SYSTEM_SUFFIX = ".system";

    public final static String VALIDATE_RENDER_OPTS_NAME = VALIDATE_RENDER_PREFIX + "opts";

    public final static String VALIDATE_SCHEMATRON_NAME = VALIDATE_PREFIX + "schematron";

    public final static String VALIDATE_VOCAB_STATIC_VALUE_SET_NAME = VALIDATE_VOCAB_STATIC_PREFIX + "value.set";
    public final static String VALIDATE_VOCAB_STATIC_VALUE_SET_EXPECTED_NAME = VALIDATE_VOCAB_STATIC_VALUE_SET_NAME + EXPECTED_SUFFIX;

    public final static String VALIDATE_VOCAB_STATIC_CODE_NAME = VALIDATE_VOCAB_STATIC_PREFIX + "code";
    public final static String VALIDATE_VOCAB_STATIC_CODE_EXPECTED_NAME = VALIDATE_VOCAB_STATIC_CODE_NAME + EXPECTED_SUFFIX;

    public final static String VALIDATE_VOCAB_STATIC_CODE_SYSTEM_NAME = VALIDATE_VOCAB_STATIC_CODE_NAME + SYSTEM_SUFFIX;
    public final static String VALIDATE_VOCAB_STATIC_CODE_SYSTEM_EXPECTED_NAME = VALIDATE_VOCAB_STATIC_CODE_SYSTEM_NAME + EXPECTED_SUFFIX;

    private CrigttContextDataNames() {
    }
}
