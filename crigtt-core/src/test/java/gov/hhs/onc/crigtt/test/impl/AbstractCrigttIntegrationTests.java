package gov.hhs.onc.crigtt.test.impl;

import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import java.io.File;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.testng.Assert;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.it.all" })
public abstract class AbstractCrigttIntegrationTests extends AbstractCrigttTests {
    protected final static String ERROR_FILE_NAME_FORMAT = "%s_error.%s";
    protected final static String REPORT_FILE_NAME_FORMAT = "%s_report.%s";

    @Value("${crigtt.test.output.dir.path}")
    protected FileSystemResource testOutDirResource;

    protected File testOutDir;

    protected void writeError(String testDocFileBaseName, ValidatorRenderType testRenderType, byte[] testReportContent) throws Exception {
        this.writeResponse(ERROR_FILE_NAME_FORMAT, testDocFileBaseName, testRenderType, testReportContent);
    }

    protected void writeReport(String testDocFileBaseName, ValidatorRenderType testRenderType, byte[] testReportContent) throws Exception {
        this.writeResponse(REPORT_FILE_NAME_FORMAT, testDocFileBaseName, testRenderType, testReportContent);
    }

    protected void writeResponse(String testRespFileNameFormat, String testDocFileBaseName, ValidatorRenderType testRenderType, byte[] testRespContent)
        throws Exception {
        FileUtils.writeByteArrayToFile(new File(this.testOutDir, String.format(testRespFileNameFormat, testDocFileBaseName, testRenderType.getExtension())),
            testRespContent);
    }

    protected void initializeFileSystem() throws Exception {
        if (!(this.testOutDir = testOutDirResource.getFile()).exists()) {
            Assert.assertTrue(this.testOutDir.mkdir(), String.format("Unable to create test output directory (path=%s).", this.testOutDir.getPath()));
        }
    }
}
