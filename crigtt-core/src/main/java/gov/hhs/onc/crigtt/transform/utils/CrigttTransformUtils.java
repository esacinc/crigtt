package gov.hhs.onc.crigtt.transform.utils;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamResult;

public final class CrigttTransformUtils {
    private CrigttTransformUtils() {
    }

    public static String toString(Transformer transformer, Source src) throws TransformerException {
        byte[] bytes = toBytes(transformer, src);
        String charsetName = transformer.getOutputProperty(OutputKeys.ENCODING);

        try {
            return ((charsetName != null) ? new String(bytes, Charset.forName(charsetName)) : new String(bytes));
        } catch (Exception e) {
            throw new TransformerException(String.format("Unable to transform XML source (class=%s, sysId=%s) to result string (charset=%s).", src.getClass()
                .getName(), src.getSystemId(), charsetName), e);
        }
    }

    public static byte[] toBytes(Transformer transformer, Source src) throws TransformerException {
        try (ByteArrayOutputStream resultOutStream = new ByteArrayOutputStream()) {
            transformer.transform(src, new StreamResult(resultOutStream));

            return resultOutStream.toByteArray();
        } catch (IOException e) {
            throw new TransformerException(String.format("Unable to transform XML source (class=%s, sysId=%s) to result bytes.", src.getClass().getName(),
                src.getSystemId()), e);
        }
    }

    public static void toFile(Transformer transformer, Source src, File resultFile) throws TransformerException {
        try (FileOutputStream resultOutStream = new FileOutputStream(resultFile)) {
            transformer.transform(src, new StreamResult(resultOutStream));
        } catch (IOException e) {
            throw new TransformerException(String.format("Unable to transform XML source (class=%s, sysId=%s) to result file (path=%s).", src.getClass()
                .getName(), src.getSystemId(), resultFile.getPath()), e);
        }
    }
}
