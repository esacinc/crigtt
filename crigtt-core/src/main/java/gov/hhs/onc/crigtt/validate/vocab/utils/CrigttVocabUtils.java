package gov.hhs.onc.crigtt.validate.vocab.utils;

import org.apache.commons.lang3.text.StrBuilder;

public final class CrigttVocabUtils {
    private final static char ICD_CODE_DELIM = '.';

    private CrigttVocabUtils() {
    }

    public static String buildDelimitedIcdCode(String code) {
        int codeLen = code.length(), lastDelimIndex = -1, codeIndex;
        StrBuilder builder = new StrBuilder((codeLen + Math.floorDiv(codeLen, 3)));

        for (codeIndex = 0; codeIndex < codeLen; codeIndex++) {
            if (((codeIndex + 1) % 3) == 0) {
                if (!builder.isEmpty()) {
                    builder.append(ICD_CODE_DELIM);
                }

                builder.append(code.substring(++lastDelimIndex, (codeIndex + 1)));

                lastDelimIndex = codeIndex;
            }
        }

        if (lastDelimIndex < (codeLen - 1)) {
            if (!builder.isEmpty()) {
                builder.append(ICD_CODE_DELIM);
            }

            builder.append(code.substring(++lastDelimIndex, codeLen));
        }

        return builder.build();
    }
}
