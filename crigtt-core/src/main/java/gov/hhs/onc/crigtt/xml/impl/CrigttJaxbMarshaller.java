package gov.hhs.onc.crigtt.xml.impl;

import javax.xml.transform.Source;
import org.springframework.oxm.XmlMappingException;
import org.springframework.oxm.jaxb.Jaxb2Marshaller;

public class CrigttJaxbMarshaller extends Jaxb2Marshaller {
    public <T> T unmarshal(Source src, Class<T> resultClass) throws XmlMappingException {
        return resultClass.cast(super.unmarshal(src));
    }
}
