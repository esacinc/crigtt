package gov.hhs.onc.crigtt.cli.validate.impl;

import gov.hhs.onc.crigtt.cli.test.impl.AbstractCrigttCliIntegrationTests;
import gov.hhs.onc.crigtt.cli.validate.CliValidatorService;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.io.utils.CrigttResourceUtils;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import javax.annotation.Resource;
import org.apache.commons.lang3.ArrayUtils;
import org.springframework.beans.factory.annotation.Value;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.it.cli.validate.all", "crigtt.test.it.cli.validate.validator.all", "crigtt.test.it.cli.validate.validator.service" })
public class CliValidatorServiceIntegrationTests extends AbstractCrigttCliIntegrationTests {
    @Value("classpath*:${crigtt.test.input.file.1.path}")
    private ResourceSource testSrc1;

    @Resource(name = "cliValidatorServiceImpl")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private CliValidatorService service;

    @Test(dependsOnMethods = { "testExecuteBadOption" })
    public void testExecuteRender() throws Exception {
        String[] baseArgs = ArrayUtils.toArray("-i", CrigttResourceUtils.extractPath(this.testSrc1.getResource()), "-d", this.testOutDir.getPath(), "-t");

        for (ValidatorRenderType renderType : ValidatorRenderType.values()) {
            this.service.execute(ArrayUtils.add(baseArgs, renderType.name()));

            Assert.assertEquals(this.service.getExitCode(), 1, "Invalid CLI service exit code.");
        }
    }

    @Test(dependsOnMethods = { "testExecuteUsage" })
    public void testExecuteBadOption() throws Exception {
        this.service.execute("-q");

        Assert.assertEquals(this.service.getExitCode(), 1, "Invalid CLI service exit code.");
    }

    @Test
    public void testExecuteUsage() throws Exception {
        this.service.execute(ArrayUtils.EMPTY_STRING_ARRAY);

        Assert.assertEquals(this.service.getExitCode(), 0, "Invalid CLI service exit code.");
    }

    @BeforeClass(groups = { "crigtt.test.it.all" })
    @Override
    protected void initializeFileSystem() throws Exception {
        super.initializeFileSystem();
    }
}
