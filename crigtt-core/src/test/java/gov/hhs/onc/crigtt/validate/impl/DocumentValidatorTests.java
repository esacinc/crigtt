package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.io.CrigttFileExtensions;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.test.impl.AbstractCrigttTests;
import gov.hhs.onc.crigtt.transform.impl.CrigttDocumentBuilder;
import gov.hhs.onc.crigtt.transform.impl.CrigttSerializer;
import gov.hhs.onc.crigtt.validate.DocumentValidationRequest;
import gov.hhs.onc.crigtt.validate.DocumentValidationResponse;
import gov.hhs.onc.crigtt.validate.DocumentValidator;
import gov.hhs.onc.crigtt.validate.SchematronValidationResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import javax.annotation.Resource;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.validate.all", "crigtt.test.validate.validator.all", "crigtt.test.validate.validator.doc" })
public class DocumentValidatorTests extends AbstractCrigttTests {
    @Value("classpath*:${crigtt.test.input.file.1.path}")
    private ResourceSource testInputSrc1;

    @Value("${crigtt.test.output.dir.path}")
    private FileSystemResource testOutputDirPath;

    @Resource(name = "serializerXmlDisplay")
    private CrigttSerializer displayXmlSerializer;

    @Resource(name = "validatorDocImpl")
    private DocumentValidator docValidator;

    @Resource(name = "docBuilderBase")
    private CrigttDocumentBuilder docBuilder;

    @Test
    public void testValidate() throws Exception {
        File testOutputDir = this.testOutputDirPath.getFile();
        testOutputDir.mkdir();

        String testOutputFileNamePrefix = this.testInputSrc1.getResource().getFilename() + "_";

        DocumentValidationRequest testReq = new DocumentValidationRequestImpl();
        testReq.setDocument(this.docBuilder.build(this.testInputSrc1));

        DocumentValidationResponse testResp = this.docValidator.validate(testReq);

        // noinspection ConstantConditions
        for (SchematronValidationResponse testSchematronResp : testResp.getSchematronResponses()) {
            try (
                OutputStream testSchematronRespOutStream =
                    new FileOutputStream(new File(testOutputDir,
                        (testOutputFileNamePrefix + testSchematronResp.getSchematron().getId() + CrigttFileExtensions.SVRL)))) {
                IOUtils.write(this.displayXmlSerializer.serializeNodeToBytes(testSchematronResp.getDocument()), testSchematronRespOutStream);

                testSchematronRespOutStream.flush();
            }
        }
    }
}
