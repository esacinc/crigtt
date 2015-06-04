package gov.hhs.onc.crigtt.web.ws.impl;

import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorRequest;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.ValidatorService;
import gov.hhs.onc.crigtt.validate.impl.ValidatorDocumentImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorRequestImpl;
import gov.hhs.onc.crigtt.web.ws.ValidatorWebService;
import java.nio.charset.Charset;
import javax.annotation.Resource;
import javax.ws.rs.core.Context;
import javax.xml.transform.stream.StreamSource;
import org.apache.commons.io.IOUtils;
import org.apache.cxf.jaxrs.ext.MessageContext;
import org.apache.cxf.jaxrs.utils.multipart.AttachmentUtils;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("validatorWebServiceImpl")
public class ValidatorWebServiceImpl implements ValidatorWebService {
    @Context
    private MessageContext msgContext;

    @Value("${crigtt.ws.service.validator.op.validate.req.field.doc.file.name}")
    private String docFileNameFieldName;

    @Resource(name = "charsetUtf8")
    private Charset enc;

    @Resource(name = "validatorServiceImpl")
    private ValidatorService validatorService;

    public ValidatorResponse validate(StreamSource docSrc) throws Exception {
        ValidatorRequest req = new ValidatorRequestImpl();

        ValidatorDocument doc = new ValidatorDocumentImpl();
        doc.setContent(IOUtils.toString(docSrc.getInputStream(), this.enc));
        doc.setFileName(new FormDataContentDisposition(AttachmentUtils.getFirstMatchingPart(this.msgContext, this.docFileNameFieldName).getContentDisposition()
            .toString()).getFileName());
        req.setDocument(doc);

        return this.validatorService.validate(req);
    }
}
