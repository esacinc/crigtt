package gov.hhs.onc.crigtt.test.impl;

import gov.hhs.onc.crigtt.validate.ValidatorSubmission;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import gov.hhs.onc.crigtt.validate.utils.ValidatorUtils;
import java.io.File;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.testng.Assert;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.it.all" })
public abstract class AbstractCrigttIntegrationTests extends AbstractCrigttTests {
    @Value("${crigtt.test.output.dir.path}")
    protected FileSystemResource testOutDirResource;

    protected File testOutDir;

    protected void writeResponse(boolean testStatus, ValidatorSubmission testSubmission, ValidatorRenderType testRenderType, byte[] testRespContent)
        throws Exception {
        this.writeResponse(ValidatorUtils.buildResponseFileName(testStatus, testSubmission, testRenderType), testRespContent);
    }

    protected void writeResponse(String testRespFileName, byte[] testRespContent) throws Exception {
        FileUtils.writeByteArrayToFile(new File(this.testOutDir, testRespFileName), testRespContent);
    }

    protected void initializeFileSystem() throws Exception {
        if (!(this.testOutDir = testOutDirResource.getFile()).exists()) {
            Assert.assertTrue(this.testOutDir.mkdir(), String.format("Unable to create test output directory (path=%s).", this.testOutDir.getPath()));
        }
    }
}
