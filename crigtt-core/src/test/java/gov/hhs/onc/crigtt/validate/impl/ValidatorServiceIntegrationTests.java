package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.test.impl.AbstractCrigttIntegrationTests;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorReport;
import gov.hhs.onc.crigtt.validate.ValidatorService;
import gov.hhs.onc.crigtt.validate.ValidatorSubmission;
import gov.hhs.onc.crigtt.validate.render.HtmlValidatorRenderer;
import gov.hhs.onc.crigtt.validate.render.JsonValidatorRenderer;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderOptions;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import gov.hhs.onc.crigtt.validate.render.XmlValidatorRenderer;
import java.util.Collections;
import java.util.Map;
import javax.annotation.Resource;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Value;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.it.validate.all", "crigtt.test.it.validate.validator.all", "crigtt.test.it.validate.validator.service" })
public class ValidatorServiceIntegrationTests extends AbstractCrigttIntegrationTests {
    private final static Map<String, Object> RENDER_OPTS = Collections.singletonMap(ValidatorRenderOptions.FORMAT_NAME, true);

    @Value("classpath*:${crigtt.test.input.file.1.path}")
    private ResourceSource testSrc1;

    @Resource(name = "validatorRendererJsonImpl")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private JsonValidatorRenderer jsonRenderer;

    @Resource(name = "validatorRendererXmlImpl")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private XmlValidatorRenderer xmlRenderer;
    
    @Resource(name = "validatorRendererHtmlImpl")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private HtmlValidatorRenderer htmlRenderer;

    @Resource(name = "validatorServiceImpl")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private ValidatorService service;

    @Test
    public void testValidate() throws Exception {
        ValidatorSubmission testSubmission = new ValidatorSubmissionImpl();

        ValidatorDocument testDoc = new ValidatorDocumentImpl();
        testDoc.setContent(this.testSrc1.getBytes());
        testDoc.setFileName(this.testSrc1.getResource().getFilename());
        testSubmission.setDocument(testDoc);

        ValidatorReport testReport = this.service.validate(testSubmission);
        String testDocFileBaseName = FilenameUtils.getBaseName(testReport.getDocument().getFileName());

        this.writeReport(testDocFileBaseName, ValidatorRenderType.JSON, this.jsonRenderer.render(testReport, RENDER_OPTS));
        this.writeReport(testDocFileBaseName, ValidatorRenderType.XML, this.xmlRenderer.render(testReport, RENDER_OPTS));
        this.writeReport(testDocFileBaseName, ValidatorRenderType.HTML, this.htmlRenderer.render(testReport, RENDER_OPTS));
    }

    @BeforeClass(groups = { "crigtt.test.it.all" })
    @Override
    protected void initializeFileSystem() throws Exception {
        super.initializeFileSystem();
    }
}
