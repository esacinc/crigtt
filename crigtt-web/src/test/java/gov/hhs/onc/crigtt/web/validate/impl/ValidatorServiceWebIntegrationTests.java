package gov.hhs.onc.crigtt.web.validate.impl;

import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import gov.hhs.onc.crigtt.web.test.impl.AbstractCrigttWebIntegrationTests;
import gov.hhs.onc.crigtt.web.validate.ValidatorHeaders;
import gov.hhs.onc.crigtt.web.validate.ValidatorParameters;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.annotation.Resource;
import javax.ws.rs.core.MultivaluedHashMap;
import javax.ws.rs.core.Response;
import org.apache.commons.io.FilenameUtils;
import org.apache.cxf.attachment.ByteDataSource;
import org.apache.cxf.jaxrs.client.Client;
import org.apache.cxf.jaxrs.client.WebClient;
import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.MultipartBody;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.it.web.ws.all", "crigtt.test.it.web.ws.validator" })
public class ValidatorServiceWebIntegrationTests extends AbstractCrigttWebIntegrationTests {
    @Value("classpath*:${crigtt.test.input.file.1.path}")
    private ResourceSource testSrc1;

    @Value("${crigtt.tomcat.ws.service.validator.op.validate.url}")
    private String testUrl;

    @Resource(name = "clientValidatorValidate")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private Client testClient;

    @Test
    public void testValidate() throws Exception {
        HttpHeaders testReqHeaders = new HttpHeaders();
        testReqHeaders.setContentDispositionFormData(ValidatorParameters.FILE_NAME, this.testSrc1.getResource().getFilename());

        MultipartBody testReqBody =
            new MultipartBody(new Attachment(ValidatorParameters.FILE_NAME, new ByteDataSource(this.testSrc1.getBytes(), MediaType.TEXT_XML_VALUE),
                new MultivaluedHashMap<>(testReqHeaders.toSingleValueMap())));

        WebClient testWebClient = WebClient.fromClient(this.testClient).type(MediaType.MULTIPART_FORM_DATA_VALUE);
        ValidatorRenderType[] testRenderTypes = ValidatorRenderType.values();
        Map<String, HttpStatus> testRespStatusMap = new LinkedHashMap<>(testRenderTypes.length);
        String testReqUri;
        Response testResp;

        for (ValidatorRenderType testRenderType : testRenderTypes) {
            testRespStatusMap.put((testReqUri = (this.testUrl + FilenameUtils.EXTENSION_SEPARATOR + testRenderType.getExtension())),
                HttpStatus.valueOf((testResp = testWebClient.to(testReqUri, false).post(testReqBody)).getStatus()));

            this.writeResponse(testResp.getHeaderString(ValidatorHeaders.FILE_NAME_NAME), testResp.readEntity(byte[].class));
        }

        testRespStatusMap.forEach((testAssertReqUri, testAssertRespStatus) -> Assert.assertSame(testAssertRespStatus, HttpStatus.OK, String.format(
            "Invalid test query (uri=%s) response status (code=%d text=%s).", testAssertReqUri, testAssertRespStatus.value(),
            testAssertRespStatus.getReasonPhrase())));
    }

    @BeforeClass(groups = { "crigtt.test.it.all" })
    @Override
    protected void initializeFileSystem() throws Exception {
        super.initializeFileSystem();
    }
}
