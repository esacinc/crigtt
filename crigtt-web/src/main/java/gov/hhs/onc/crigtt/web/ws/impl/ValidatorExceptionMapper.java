package gov.hhs.onc.crigtt.web.ws.impl;

import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;
import javax.ws.rs.ext.ExceptionMapper;
import org.apache.cxf.jaxrs.utils.JAXRSUtils;
import org.apache.cxf.message.Exchange;
import org.springframework.stereotype.Component;

@Component("exceptionMapperValidator")
public class ValidatorExceptionMapper implements ExceptionMapper<Exception> {
    @Override
    public Response toResponse(Exception exception) {
        Exchange exchange = JAXRSUtils.getCurrentMessage().getExchange();
        exchange.put(Exception.class, exception);

        ResponseBuilder respBuilder = Response.serverError();

        if (exchange.containsKey(ValidatorResponse.class.getName())) {
            ValidatorResponse resp = exchange.get(ValidatorResponse.class);

            respBuilder.entity(resp).type(resp.getContentType().getType().toString());
        }

        return respBuilder.build();
    }
}
