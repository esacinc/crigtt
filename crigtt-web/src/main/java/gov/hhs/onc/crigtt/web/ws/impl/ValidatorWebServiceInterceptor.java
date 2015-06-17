package gov.hhs.onc.crigtt.web.ws.impl;

import gov.hhs.onc.crigtt.utils.CrigttFileUtils;
import gov.hhs.onc.crigtt.validate.ValidatorContentType;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorRequest;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.impl.AbstractValidatorServiceInterceptor;
import gov.hhs.onc.crigtt.validate.impl.ValidatorDocumentImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorRequestImpl;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.stream.Stream;
import javax.annotation.Resource;
import javax.ws.rs.Path;
import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.container.ContainerRequestFilter;
import javax.ws.rs.container.ContainerResponseContext;
import javax.ws.rs.container.ContainerResponseFilter;
import javax.ws.rs.core.Context;
import org.apache.commons.io.IOUtils;
import org.apache.cxf.jaxrs.ext.MessageContext;
import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.utils.JAXRSUtils;
import org.apache.cxf.jaxrs.utils.multipart.AttachmentUtils;
import org.apache.cxf.message.Exchange;
import org.apache.cxf.message.Message;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;

@Path("/validator/validate")
public class ValidatorWebServiceInterceptor extends AbstractValidatorServiceInterceptor implements ContainerRequestFilter, ContainerResponseFilter {
    @Context
    private MessageContext msgContext;

    @Value("${crigtt.ws.service.validator.op.validate.req.field.doc.file.name}")
    private String docFileNameFieldName;

    @Resource(name = "charsetUtf8")
    private Charset enc;

    @Override
    public void filter(ContainerRequestContext reqContext, ContainerResponseContext respContext) throws IOException {
        Exchange exchange = JAXRSUtils.getCurrentMessage().getExchange();

        this.postProcess(exchange.get(ValidatorRequest.class), exchange.get(ValidatorResponse.class), exchange.get(Exception.class));
    }

    @Override
    public void filter(ContainerRequestContext reqContext) throws IOException {
        Exchange exchange = JAXRSUtils.getCurrentMessage().getExchange();

        ValidatorRequest req = new ValidatorRequestImpl();
        exchange.put(ValidatorRequest.class, req);

        if (exchange.containsKey(Message.CONTENT_TYPE)) {
            final MediaType contentTypeObj = MediaType.parseMediaType(((String) exchange.get(Message.CONTENT_TYPE)));

            Stream.of(ValidatorContentType.values()).filter(contentType -> contentType.getType().equals(contentTypeObj)).findFirst()
                .ifPresent(req::setContentType);
        }

        ValidatorDocument doc = new ValidatorDocumentImpl();
        req.setDocument(doc);

        Attachment docAttachment = AttachmentUtils.getFirstMatchingPart(this.msgContext, this.docFileNameFieldName);

        if (docAttachment != null) {
            try (InputStream docInStream = docAttachment.getDataHandler().getInputStream()) {
                doc.setContent(IOUtils.toString(docInStream, this.enc));

                doc.setFileName(CrigttFileUtils.buildSafeFileName(new FormDataContentDisposition(docAttachment.getContentDisposition().toString())
                    .getFileName()));
            } catch (Exception e) {
                exchange.put(Exception.class, e);
            }
        }

        exchange.put(ValidatorResponse.class, this.preProcess(req));
    }
}
