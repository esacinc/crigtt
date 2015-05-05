package gov.hhs.onc.crigtt.config.impl;

import ch.qos.logback.classic.Level;
import ch.qos.logback.classic.spi.LoggingEvent;
import com.ctc.wstx.sax.WstxSAXParserFactory;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.annotation.Resource;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.stream.StreamResult;
import net.sf.saxon.Configuration;
import net.sf.saxon.lib.FeatureKeys;
import net.sf.saxon.lib.Logger;
import net.sf.saxon.trans.LicenseException;
import net.sf.saxon.trans.XPathException;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.slf4j.LoggerFactory;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

public class CrigttConfiguration extends Configuration {
    private static class CrigttSaxonLogger extends Logger {
        private final static Map<Integer, Level> SEVERITY_LEVELS = Stream.of(new ImmutablePair<>(INFO, Level.INFO), new ImmutablePair<>(WARNING, Level.WARN),
            new ImmutablePair<>(ERROR, Level.ERROR), new ImmutablePair<>(DISASTER, Level.ERROR)).collect(Collectors.toMap(Entry::getKey, Entry::getValue));

        private final static Set<String> STACK_SKIP_CLASS_NAMES = new HashSet<>(ClassUtils.convertClassesToClassNames(Arrays.asList(Logger.class,
            CrigttSaxonLogger.class)));

        private final static ch.qos.logback.classic.Logger LOGGER = ((ch.qos.logback.classic.Logger) LoggerFactory.getLogger(CrigttSaxonLogger.class));

        @Override
        public void println(String msg, int severity) {
            LoggingEvent event = new LoggingEvent(ch.qos.logback.classic.Logger.FQCN, LOGGER, SEVERITY_LEVELS.get(severity), msg, null, null);

            StackTraceElement[] stackFrames = new Throwable().getStackTrace();

            for (int a = 1; a < stackFrames.length; a++) {
                if (!STACK_SKIP_CLASS_NAMES.contains(stackFrames[a].getClassName())) {
                    stackFrames = ArrayUtils.subarray(stackFrames, a, stackFrames.length);

                    break;
                }
            }

            event.setCallerData(stackFrames);

            LOGGER.callAppenders(event);
        }

        @Override
        public StreamResult asStreamResult() {
            return new StreamResult(new StringWriter() {
                @Override
                public void close() throws IOException {
                    super.close();

                    CrigttSaxonLogger.this.println(this.getBuffer().toString(), INFO);
                }
            });
        }
    }

    @Resource(name = "saxParserFactoryCrigtt")
    private WstxSAXParserFactory saxParserFactory;

    {
        this.setLogger(new CrigttSaxonLogger());
        this.setSourceParserClass(StringUtils.EMPTY);
        this.setStyleParserClass(StringUtils.EMPTY);
    }

    @Override
    public XMLReader makeParser(String className) throws TransformerFactoryConfigurationError {
        try {
            return this.saxParserFactory.newSAXParser().getXMLReader();
        } catch (SAXException e) {
            throw new TransformerFactoryConfigurationError(new XPathException(e));
        }
    }

    @Override
    public void checkLicensedFeature(int featureId, String featureName) throws LicenseException {
    }

    public void setConfigurationProperties(Map<String, ?> configProps) {
        configProps.forEach(this::setConfigurationProperty);
    }

    public boolean isSchemaAware() {
        return this.getDefaultXsltCompilerInfo().isSchemaAware();
    }

    public void setSchemaAware(boolean schemaAware) {
        this.getDefaultXsltCompilerInfo().setSchemaAware(schemaAware);
    }

    public void setXsltVersion(String xsltVersion) {
        this.setConfigurationProperty(FeatureKeys.XSLT_VERSION, xsltVersion);
    }
}
