package gov.hhs.onc.crigtt.web.validate.impl;

import gov.hhs.onc.crigtt.utils.CrigttFileUtils;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorReport;
import gov.hhs.onc.crigtt.validate.ValidatorService;
import gov.hhs.onc.crigtt.validate.ValidatorSubmission;
import gov.hhs.onc.crigtt.validate.impl.ValidatorDocumentImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorSubmissionImpl;
import gov.hhs.onc.crigtt.web.jaxrs.ContentDispositionParameters;
import gov.hhs.onc.crigtt.web.validate.ValidatorWebService;
import java.io.InputStream;
import javax.annotation.Resource;
import javax.ws.rs.core.Context;
import org.apache.commons.io.IOUtils;
import org.apache.cxf.jaxrs.ext.MessageContext;
import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.utils.JAXRSUtils;
import org.apache.cxf.jaxrs.utils.multipart.AttachmentUtils;
import org.apache.cxf.message.Exchange;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("validatorWebServiceImpl")
public class ValidatorWebServiceImpl implements ValidatorWebService {
    @Context
    private MessageContext msgContext;

    @Value("${crigtt.ws.service.validator.op.validate.attachment.doc.file.id}")
    private String docFileAttachmentId;

    @Resource(name = "validatorServiceImpl")
    private ValidatorService validatorService;

    public ValidatorReport validate() throws Exception {
        Exchange exchange = JAXRSUtils.getCurrentMessage().getExchange();

        ValidatorSubmission submission = new ValidatorSubmissionImpl();
        exchange.put(ValidatorSubmission.class, submission);

        ValidatorDocument doc = new ValidatorDocumentImpl();
        submission.setDocument(doc);

        Attachment docAttachment = AttachmentUtils.getFirstMatchingPart(this.msgContext, this.docFileAttachmentId);

        if (docAttachment != null) {
            doc.setFileName(CrigttFileUtils.buildSafeFileName(docAttachment.getContentDisposition().getParameter(ContentDispositionParameters.FILENAME)));

            try (InputStream docInStream = docAttachment.getDataHandler().getInputStream()) {
                doc.setContent(IOUtils.toByteArray(docInStream));
            }
        }

        ValidatorReport report = this.validatorService.validate(submission);
        exchange.put(ValidatorReport.class, report);

        return report;
    }
}
