package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.io.CrigttFileExtensions;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.test.impl.AbstractCrigttTests;
import gov.hhs.onc.crigtt.transform.impl.CrigttSerializer;
import gov.hhs.onc.crigtt.validate.CrigttSchematron;
import gov.hhs.onc.crigtt.validate.CrigttValidator;
import gov.hhs.onc.crigtt.validate.SchematronValidatorResult;
import gov.hhs.onc.crigtt.validate.ValidatorResult;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Map;
import javax.annotation.Resource;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.validate.all", "crigtt.test.validate.validator" })
public class CrigttValidatorTests extends AbstractCrigttTests {
    @Value("classpath:${crigtt.test.input.file.1.path}")
    private ResourceSource testInputSrc1;

    @Value("${crigtt.test.output.dir.path}")
    private FileSystemResource testOutputDirPath;

    @Resource(name = "serializerXmlDisplay")
    private CrigttSerializer displayXmlSerializer;

    @Resource(name = "validatorCrigtt")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private CrigttValidator validator;

    @Test
    public void testValidate() throws Exception {
        File testOutputDir = this.testOutputDirPath.getFile();
        testOutputDir.mkdir();

        String testOutputFileNamePrefix = this.testInputSrc1.getResource().getFilename() + "_";
        ValidatorResult testResult = this.validator.validate(testInputSrc1);
        Map<CrigttSchematron, SchematronValidatorResult> testSchematronResults = testResult.getSchematronResults();

        for (CrigttSchematron testSchematron : testSchematronResults.keySet()) {
            try (
                OutputStream testSchematronResultOutStream =
                    new FileOutputStream(new File(testOutputDir, (testOutputFileNamePrefix + testSchematron.getName() + CrigttFileExtensions.SVRL)))) {
                IOUtils.write(this.displayXmlSerializer.serializeNodeToBytes(testSchematronResults.get(testSchematron).getDocument().getNode()),
                    testSchematronResultOutStream);

                testSchematronResultOutStream.flush();
            }
        }
    }
}
