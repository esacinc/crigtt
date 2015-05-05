package gov.hhs.onc.crigtt.xml.impl;

import com.ctc.wstx.stax.WstxOutputFactory;
import java.util.Map;

public class CrigttXmlOutputFactory extends WstxOutputFactory {
    public void setProperties(Map<String, Object> props) {
        props.forEach(this::setProperty);
    }
}
