package gov.hhs.onc.crigtt.logging.impl;

import ch.qos.logback.classic.Level;
import ch.qos.logback.classic.spi.LoggingEvent;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.annotation.Nullable;
import javax.xml.transform.stream.StreamResult;
import net.sf.saxon.lib.Logger;
import net.sf.saxon.lib.TraceListener;
import net.sf.saxon.trace.AbstractTraceListener;
import net.sf.saxon.trace.XSLTTraceListener;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.slf4j.LoggerFactory;

public class Slf4jSaxonLogger extends Logger {
    private final static Map<Integer, Level> LEVEL_MAP = Stream.of(new ImmutablePair<>(Logger.INFO, Level.INFO),
        new ImmutablePair<>(Logger.WARNING, Level.WARN), new ImmutablePair<>(Logger.ERROR, Level.ERROR), new ImmutablePair<>(Logger.DISASTER, Level.ERROR))
        .collect(Collectors.toMap(Entry::getKey, Entry::getValue));

    private final static Set<String> CALLER_FRAME_BASE_SKIP_CLASS_NAMES = Stream
        .of(Logger.class, Slf4jSaxonLogger.class, TraceListener.class, AbstractTraceListener.class, XSLTTraceListener.class, Slf4jXsltTraceListener.class)
        .map(Class::getName).collect(Collectors.toSet());

    private final static ch.qos.logback.classic.Logger LOGGER = ((ch.qos.logback.classic.Logger) LoggerFactory.getLogger(Slf4jSaxonLogger.class));

    private Set<String> callerFrameSkipClassNames = new HashSet<>(CALLER_FRAME_BASE_SKIP_CLASS_NAMES);

    public Slf4jSaxonLogger(Class<?> ... callerFrameSkipClasses) {
        Stream.of(callerFrameSkipClasses).map(Class::getName).forEach(this.callerFrameSkipClassNames::add);
    }

    @Override
    public void println(String msg, int level) {
        LoggingEvent loggingEvent = new LoggingEvent(ch.qos.logback.classic.Logger.FQCN, LOGGER, LEVEL_MAP.get(level), msg, null, null);
        StackTraceElement[] callerFrames = new Throwable().getStackTrace();

        for (int a = 0; a < callerFrames.length; a++) {
            if (!this.callerFrameSkipClassNames.contains(callerFrames[a].getClassName())) {
                callerFrames = ArrayUtils.subarray(callerFrames, ++a, callerFrames.length);

                break;
            }
        }

        loggingEvent.setCallerData(callerFrames);

        LOGGER.callAppenders(loggingEvent);
    }

    @Nullable
    @Override
    public StreamResult asStreamResult() {
        return null;
    }
}
