package gov.hhs.onc.crigtt.web.ws.impl;

import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.impl.ValidatorResponseImpl;
import gov.hhs.onc.crigtt.web.ws.ValidatorWebService;
import java.util.UUID;
import javax.ws.rs.core.Context;
import org.apache.cxf.jaxrs.ext.MessageContext;
import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.joda.time.Instant;
import org.springframework.stereotype.Component;

@Component("validatorWebServiceImpl")
public class ValidatorWebServiceImpl implements ValidatorWebService {
    @Context
    private MessageContext msgContext;

    public ValidatorResponse validate(Attachment docAttachment) throws Exception {
        ValidatorResponse resp = new ValidatorResponseImpl();
        resp.setDocumentFileName(docAttachment.getContentDisposition().getParameter("filename"));
        resp.setDocumentId(UUID.randomUUID().toString());
        resp.setSubmissionTimestamp(Instant.now());
        resp.setProcessedTimestamp(Instant.now());

        return resp;

        // @formatter:off
        /*
        DocumentValidationRequest req = new DocumentValidationRequestImpl();
        req.setDocument(doc);

        DocumentValidationResponse resp = this.docValidator.validate(req);
        List<SchematronValidationResponse> schematronResps = resp.getSchematronResponses();

        List<Attachment> respAttachments = new ArrayList<>(schematronResps.size());

        respAttachments.addAll(schematronResps
            .stream()
            .map(
                schematronResp -> new Attachment((docFileName + "_" + schematronResp.getSchematron().getId() + CrigttFileExtensions.SVRL),
                    MediaType.TEXT_XML_VALUE, schematronResp.getDocument().getSource())).collect(Collectors.toList()));

        return new MultipartBody(respAttachments, true);
        */
        // @formatter:on
    }
}
