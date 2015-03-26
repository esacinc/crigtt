package gov.hhs.onc.crigtt.logging.impl;

import net.sf.saxon.lib.TraceListener;
import net.sf.saxon.trace.XSLTTraceListener;
import org.springframework.stereotype.Component;

@Component("xsltTraceListenerSlf4j")
public class Slf4jXsltTraceListener extends XSLTTraceListener {
    {
        this.setOutputDestination(new Slf4jSaxonLogger(TraceListener.class, XSLTTraceListener.class, this.getClass()));
    }
}
