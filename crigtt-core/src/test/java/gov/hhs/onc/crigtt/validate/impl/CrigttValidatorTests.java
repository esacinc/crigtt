package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.test.impl.AbstractCrigttTests;
import gov.hhs.onc.crigtt.transform.utils.CrigttTransformUtils;
import gov.hhs.onc.crigtt.validate.CrigttValidator;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import javax.annotation.Resource;
import javax.xml.transform.Transformer;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamSource;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import org.w3c.dom.Document;

@Test(groups = { "crigtt.test.validate.all", "crigtt.test.validator.validator" })
public class CrigttValidatorTests extends AbstractCrigttTests {
    private final static Logger LOGGER = LoggerFactory.getLogger(CrigttValidatorTests.class);

    @Value("classpath:${crigtt.test.input.file.1.path}")
    private org.springframework.core.io.Resource testInputFile1;

    @Value("${crigtt.test.output.file.1.path.ccda.r2.html}")
    private FileSystemResource testCcdaR2HtmlOutputFile1;

    @Value("${crigtt.test.output.file.1.path.ccda.r2.svrl}")
    private FileSystemResource testCcdaR2SvrlOutputFile1;

    @Value("${crigtt.test.output.file.1.path.ccda.r2.cancer.reg.html}")
    private FileSystemResource testCcdaR2CancerRegHtmlOutputFile1;

    @Value("${crigtt.test.output.file.1.path.ccda.r2.cancer.reg.svrl}")
    private FileSystemResource testCcdaR2CancerRegSvrlOutputFile1;

    @Value("${crigtt.test.output.dir.path}")
    private FileSystemResource testOutputDir;

    @Resource(name = "validatorCcdaR2")
    private CrigttValidator ccdaR2Validator;

    @Resource(name = "validatorCcdaR2CancerReg")
    private CrigttValidator ccdaR2CancerRegValidator;

    @Resource(name = "transformerSchematronValidationReport")
    private Transformer schematronValidationReportTransformer;

    @Resource(name = "transformerSchematronValidationReportHtml")
    private Transformer schematronHtmlValidationReportTransformer;

    private String testInputFilePath1;
    private byte[] testInputFileContent1;

    @Test
    public void testValidate() throws Exception {
        this.validateFile(this.testInputFilePath1, this.testInputFileContent1, this.ccdaR2Validator, this.testCcdaR2SvrlOutputFile1.getFile(),
            this.testCcdaR2HtmlOutputFile1.getFile());
        this.validateFile(this.testInputFilePath1, this.testInputFileContent1, this.ccdaR2CancerRegValidator,
            this.testCcdaR2CancerRegSvrlOutputFile1.getFile(), this.testCcdaR2CancerRegHtmlOutputFile1.getFile());
    }

    @BeforeClass
    public void initializeTestFiles() throws Exception {
        this.testInputFilePath1 = this.testInputFile1.getURL().toExternalForm();

        try (InputStream testInputFileInStream1 = this.testInputFile1.getInputStream()) {
            this.testInputFileContent1 = IOUtils.toByteArray(testInputFileInStream1);
        }

        this.testOutputDir.getFile().mkdir();
    }

    private void
        validateFile(String testInputFilePath, byte[] testInputFileContent, CrigttValidator validator, File testSvrlOutputFile, File testHtmlOutputFile)
            throws Exception {
        Document testResultDoc = validator.validate(new StreamSource(new ByteArrayInputStream(testInputFileContent), testInputFilePath));
        byte[] testResultSvrlContent = CrigttTransformUtils.toBytes(this.schematronValidationReportTransformer, new DOMSource(testResultDoc));

        try (FileOutputStream testResultSvrlOutStream = new FileOutputStream(testSvrlOutputFile)) {
            testResultSvrlOutStream.write(testResultSvrlContent);
            testResultSvrlOutStream.flush();
        }

        CrigttTransformUtils.toFile(this.schematronHtmlValidationReportTransformer, new StreamSource(new ByteArrayInputStream(testResultSvrlContent)),
            testHtmlOutputFile);
    }
}
