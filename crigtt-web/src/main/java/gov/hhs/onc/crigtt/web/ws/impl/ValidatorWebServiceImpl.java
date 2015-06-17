package gov.hhs.onc.crigtt.web.ws.impl;

import gov.hhs.onc.crigtt.validate.ValidatorRequest;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.ValidatorService;
import gov.hhs.onc.crigtt.web.ws.ValidatorWebService;
import javax.annotation.Resource;
import javax.ws.rs.core.Context;
import org.apache.cxf.jaxrs.ext.MessageContext;
import org.apache.cxf.jaxrs.utils.JAXRSUtils;
import org.apache.cxf.message.Exchange;
import org.springframework.stereotype.Component;

@Component("validatorWebServiceImpl")
public class ValidatorWebServiceImpl implements ValidatorWebService {
    @Context
    private MessageContext msgContext;

    @Resource(name = "validatorServiceImpl")
    private ValidatorService validatorService;

    public ValidatorResponse validate() throws Exception {
        Exchange exchange = JAXRSUtils.getCurrentMessage().getExchange();

        return this.validatorService.validate(exchange.get(ValidatorRequest.class), exchange.get(ValidatorResponse.class));
    }
}
