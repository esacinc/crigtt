package gov.hhs.onc.crigtt.validate.impl;

import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.databind.ObjectMapper;
import gov.hhs.onc.crigtt.io.CrigttFileExtensions;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.test.impl.AbstractCrigttTests;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorRequest;
import gov.hhs.onc.crigtt.validate.ValidatorService;
import java.io.File;
import java.nio.charset.Charset;
import javax.annotation.Resource;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.validate.all", "crigtt.test.validate.validator.all", "crigtt.test.validate.validator.service" })
public class ValidatorServiceTests extends AbstractCrigttTests {
    @Value("classpath*:${crigtt.test.input.file.1.path}")
    private ResourceSource testInputSrc1;

    @Value("${crigtt.test.output.dir.path}")
    private FileSystemResource testOutputDirPath;

    @Resource(name = "charsetUtf8")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private Charset enc;

    @Resource(name = "objMapperCrigtt")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private ObjectMapper objMapper;

    @Resource(name = "validatorServiceImpl")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private ValidatorService validatorService;

    @Test
    public void testValidate() throws Exception {
        File testOutputDir = this.testOutputDirPath.getFile();
        testOutputDir.mkdir();

        ValidatorRequest testReq = new ValidatorRequestImpl();

        ValidatorDocument testDoc = new ValidatorDocumentImpl();
        testDoc.setContent(new String(this.testInputSrc1.getBytes(), this.enc));
        testReq.setDocument(testDoc);

        String testDocFileName = this.testInputSrc1.getResource().getFilename();
        testDoc.setFileName(testDocFileName);

        this.objMapper.writer(new DefaultPrettyPrinter(StringUtils.repeat(" ", 4))).writeValue(
            new File(testOutputDir, (StringUtils.removeEnd(testDocFileName, CrigttFileExtensions.XML) + "_results" + CrigttFileExtensions.JSON)),
            this.validatorService.validate(testReq, new ValidatorResponseImpl()));
    }
}
