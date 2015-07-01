package gov.hhs.onc.crigtt.validate.render.impl;

import gov.hhs.onc.crigtt.transform.impl.AbstractCrigttExtensionFunction;
import gov.hhs.onc.crigtt.utils.CrigttDateUtils;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderOptions;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import java.util.Map;
import java.util.TimeZone;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.value.SequenceType;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.stereotype.Component;

@Component("extFuncFormatTimestamp")
public class FormatTimestampFunction extends AbstractCrigttExtensionFunction {
    public final static StructuredQName NAME = new QName(CrigttXmlNs.VALIDATE_PREFIX, CrigttXmlNs.VALIDATE_URI, "format-timestamp").getStructuredQName();

    public FormatTimestampFunction() {
        super(NAME, SequenceType.SINGLE_STRING, SequenceType.SINGLE_LONG);
    }

    @Override
    protected XdmValue call(XPathContext context, Map<Object, Object> contextData, XdmValue[] args) throws Exception {
        return new XdmAtomicValue(DateFormatUtils.format(((XdmAtomicValue) args[0]).getLongValue(), CrigttDateUtils.DISPLAY_FORMAT_PATTERN,
            ((TimeZone) contextData.get(ValidatorRenderOptions.TIME_ZONE_CONTEXT_DATA_KEY))));
    }
}
