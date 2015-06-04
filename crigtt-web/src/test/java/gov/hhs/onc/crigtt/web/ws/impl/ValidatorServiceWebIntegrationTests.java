package gov.hhs.onc.crigtt.web.ws.impl;

import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.databind.ObjectMapper;
import gov.hhs.onc.crigtt.io.CrigttFileExtensions;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.impl.ValidatorResponseImpl;
import gov.hhs.onc.crigtt.web.test.impl.AbstractCrigttWebIntegrationTests;
import java.io.File;
import javax.annotation.Resource;
import javax.ws.rs.core.MultivaluedHashMap;
import org.apache.commons.lang3.StringUtils;
import org.apache.cxf.jaxrs.client.Client;
import org.apache.cxf.jaxrs.client.WebClient;
import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.InputStreamDataSource;
import org.apache.cxf.jaxrs.ext.multipart.MultipartBody;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.it.web.ws.all", "crigtt.test.it.web.ws.validator" })
public class ValidatorServiceWebIntegrationTests extends AbstractCrigttWebIntegrationTests {
    @Value("classpath*:${crigtt.test.input.file.1.path}")
    private ResourceSource testInputSrc1;

    @Value("${crigtt.test.output.dir.path}")
    private FileSystemResource testOutputDirPath;

    @Value("${crigtt.ws.service.validator.op.validate.req.field.doc.file.name}")
    private String docFileNameFieldName;

    @Resource(name = "objMapperCrigtt")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private ObjectMapper objMapper;

    @Resource(name = "clientValidatorValidate")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private Client validatorValidateClient;

    @Test
    public void testValidate() throws Exception {
        File testOutputDir = this.testOutputDirPath.getFile();
        testOutputDir.mkdir();

        String testDocFileName = this.testInputSrc1.getResource().getFilename();
        
        WebClient validatorValidateWebClient = WebClient.fromClient(this.validatorValidateClient);
        validatorValidateWebClient.type(MediaType.MULTIPART_FORM_DATA_VALUE);

        HttpHeaders reqHeaders = new HttpHeaders();
        reqHeaders.setContentDispositionFormData(this.docFileNameFieldName, testDocFileName);

        MultivaluedHashMap<String, String> jaxRsReqHeaders = new MultivaluedHashMap<>();
        jaxRsReqHeaders.putAll(reqHeaders);

        ValidatorResponse resp =
            validatorValidateWebClient.post(
                new MultipartBody(new Attachment(this.docFileNameFieldName, new InputStreamDataSource(this.testInputSrc1.getInputStream(),
                    MediaType.TEXT_XML_VALUE, this.docFileNameFieldName), jaxRsReqHeaders)), ValidatorResponseImpl.class);

        this.objMapper.writer(new DefaultPrettyPrinter(StringUtils.repeat(" ", 4))).writeValue(
            new File(testOutputDir, (StringUtils.removeEnd(testDocFileName, CrigttFileExtensions.XML) + "_results" + CrigttFileExtensions.JSON)), resp);
    }
}
