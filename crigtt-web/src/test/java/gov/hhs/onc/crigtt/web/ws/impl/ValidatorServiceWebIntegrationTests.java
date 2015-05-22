package gov.hhs.onc.crigtt.web.ws.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.transform.impl.CrigttDocumentBuilder;
import gov.hhs.onc.crigtt.transform.impl.CrigttSerializer;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.impl.ValidatorResponseImpl;
import gov.hhs.onc.crigtt.web.test.impl.AbstractCrigttWebIntegrationTests;
import javax.annotation.Resource;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedHashMap;
import javax.ws.rs.core.MultivaluedMap;
import org.apache.cxf.jaxrs.client.Client;
import org.apache.cxf.jaxrs.client.WebClient;
import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.InputStreamDataSource;
import org.apache.cxf.jaxrs.ext.multipart.MultipartBody;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpHeaders;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.it.web.ws.all", "crigtt.test.it.web.ws.validator" })
public class ValidatorServiceWebIntegrationTests extends AbstractCrigttWebIntegrationTests {
    private final static Logger LOGGER = LoggerFactory.getLogger(ValidatorServiceWebIntegrationTests.class);

    @Value("classpath*:${crigtt.test.input.file.1.path}")
    private ResourceSource testInputSrc1;

    @Value("${crigtt.test.output.dir.path}")
    private FileSystemResource testOutputDirPath;

    @Resource(name = "serializerXmlDisplay")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private CrigttSerializer displayXmlSerializer;

    @Resource(name = "docBuilderBase")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private CrigttDocumentBuilder docBuilder;

    @Resource(name = "clientValidatorValidate")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private Client validatorValidateClient;

    @Resource(name = "objMapperCrigtt")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private ObjectMapper objMapper;

    @Test
    public void testValidate() throws Exception {
        WebClient validatorValidateWebClient = WebClient.fromClient(this.validatorValidateClient);
        validatorValidateWebClient.type(MediaType.MULTIPART_FORM_DATA_TYPE);

        HttpHeaders reqHeaders = new HttpHeaders();
        reqHeaders.setContentDispositionFormData("documentFile", this.testInputSrc1.getResource().getFilename());
        
        MultivaluedMap<String, String> reqHeadersJaxRs = new MultivaluedHashMap<>();
        reqHeadersJaxRs.putAll(reqHeaders);

        ValidatorResponse resp =
            validatorValidateWebClient.post(new MultipartBody(new Attachment("documentFile", new InputStreamDataSource(this.testInputSrc1.getInputStream(),
                MediaType.TEXT_XML), reqHeadersJaxRs)), ValidatorResponseImpl.class);

        LOGGER.warn(this.objMapper.writeValueAsString(resp));
    }
}
