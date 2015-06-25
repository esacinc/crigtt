package gov.hhs.onc.crigtt.validate.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import gov.hhs.onc.crigtt.io.CrigttFileExtensions;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.test.impl.AbstractCrigttIntegrationTests;
import gov.hhs.onc.crigtt.transform.impl.CrigttSerializer;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorReport;
import gov.hhs.onc.crigtt.validate.ValidatorService;
import gov.hhs.onc.crigtt.validate.ValidatorSubmission;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import java.io.File;
import javax.annotation.Resource;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.it.validate.all", "crigtt.test.it.validate.validator.all", "crigtt.test.it.validate.validator.service" })
public class ValidatorServiceIntegrationTests extends AbstractCrigttIntegrationTests {
    @Value("classpath*:${crigtt.test.input.file.1.path}")
    private ResourceSource testInputSrc1;

    @Value("${crigtt.test.output.dir.path}")
    private FileSystemResource testOutputDirPath;

    @Resource(name = "objMapperDisplay")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private ObjectMapper displayObjMapper;

    @Resource(name = "objFactoryValidate")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private gov.hhs.onc.crigtt.validate.ObjectFactory validateObjFactory;

    @Resource(name = "jaxbMarshallerValidator")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private CrigttJaxbMarshaller validatorJaxbMarshaller;

    @Resource(name = "serializerXmlDisplay")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private CrigttSerializer displayXmlSerializer;

    @Resource(name = "validatorServiceImpl")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private ValidatorService validatorService;

    @Test
    public void testValidate() throws Exception {
        File testOutputDir = this.testOutputDirPath.getFile();
        testOutputDir.mkdir();

        ValidatorSubmission testSubmission = new ValidatorSubmissionImpl();

        ValidatorDocument testDoc = new ValidatorDocumentImpl();
        testDoc.setContent(this.testInputSrc1.getBytes());
        testSubmission.setDocument(testDoc);

        String testDocFileName = this.testInputSrc1.getResource().getFilename();
        testDoc.setFileName(testDocFileName);

        ValidatorReport testReport = this.validatorService.validate(testSubmission);

        this.displayObjMapper.writeValue(new File(testOutputDir,
            (StringUtils.removeEnd(testDocFileName, CrigttFileExtensions.XML) + "_report" + CrigttFileExtensions.JSON)), testReport);

        this.displayXmlSerializer.serializeToFile(new ByteArraySource(this.validatorJaxbMarshaller.marshal(this.validateObjFactory.createReport(testReport))),
            new File(testOutputDir, (StringUtils.removeEnd(testDocFileName, CrigttFileExtensions.XML) + "_report" + CrigttFileExtensions.XML)));
    }
}
