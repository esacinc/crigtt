package gov.hhs.onc.crigtt.web.jaxrs.impl;

import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import java.util.stream.Stream;
import javax.annotation.Nullable;
import javax.ws.rs.ext.ContextResolver;
import javax.xml.bind.JAXBContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.oxm.jaxb.Jaxb2Marshaller;
import org.springframework.stereotype.Component;

@Component("contextResolverJaxbContext")
public class CrigttJaxbContextContextResolver implements ContextResolver<JAXBContext> {
    @Autowired
    private CrigttJaxbMarshaller[] jaxbMarshallers;

    @Nullable
    @Override
    public JAXBContext getContext(Class<?> clazz) {
        return Stream.of(this.jaxbMarshallers).filter(jaxbMarshaller -> jaxbMarshaller.supports(clazz)).findFirst().map(Jaxb2Marshaller::getJaxbContext)
            .orElse(null);
    }
}
