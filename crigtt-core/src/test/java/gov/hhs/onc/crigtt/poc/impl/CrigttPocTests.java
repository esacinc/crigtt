package gov.hhs.onc.crigtt.poc.impl;

import com.helger.commons.xml.transform.DefaultTransformURIResolver;
import gov.hhs.onc.crigtt.test.impl.AbstractCrigttTests;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;
import javax.annotation.Nullable;
import javax.annotation.Resource;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import net.sf.saxon.lib.ErrorGatherer;
import net.sf.saxon.s9api.StaticError;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.SystemUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.testng.annotations.Test;
import org.w3c.dom.Document;

@Test(groups = { "crigtt.test.poc" })
public class CrigttPocTests extends AbstractCrigttTests {
    private final static Logger LOGGER = LoggerFactory.getLogger(CrigttPocTests.class);

    @Value("classpath:${crigtt.test.input.file.1.path}")
    private org.springframework.core.io.Resource testInputFile1;

    @Resource(name = "templatesSchematronCcdaR2")
    private Templates templatesSchematronCcdaR2;

    @Resource(name = "templatesSchematronCcdaR2CancerReg")
    private Templates templatesSchematronCcdaR2CancerReg;

    @Resource(name = "transformerFactoryCrigtt")
    private TransformerFactory transformerFactory;

    @Test
    public void testPoc() throws Exception {
        String testOutputFileNamePrefix =
            String.join(SystemUtils.FILE_SEPARATOR, SystemUtils.getUserDir().toString(), "surefire-reports",
                StringUtils.removeEndIgnoreCase(this.testInputFile1.getFile().getName(), ".xml"));

        this.validateInputFile(this.templatesSchematronCcdaR2, "META-INF/crigtt/schematron/c-cda-r2/", this.testInputFile1, new File(testOutputFileNamePrefix
            + "_c-cda-r2_results"));

        this.validateInputFile(this.templatesSchematronCcdaR2CancerReg, "META-INF/crigtt/schematron/c-cda-r2-cancer-reg/", this.testInputFile1, new File(
            testOutputFileNamePrefix + "_c-cda-r2-cancer-reg_results"));
    }

    private void validateInputFile(Templates templates, String baseResourcePath, org.springframework.core.io.Resource testInputFile, File testOutputBaseFile)
        throws Exception {
        List<StaticError> errors = new ArrayList<>();
        ErrorGatherer errorGatherer = new ErrorGatherer(errors);

        testOutputBaseFile.getParentFile().mkdir();

        Document validationResultDoc = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
        DOMResult validationResultOutStream = new DOMResult(validationResultDoc);

        Transformer transformer = templates.newTransformer();
        transformer.setErrorListener(errorGatherer);
        transformer.setURIResolver(new DefaultTransformURIResolver() {
            @Nullable
            @Override
            protected Source internalResolve(String sysId, @Nullable String baseUri) throws TransformerException {
                InputStream relativeResourceStream = ClassLoader.getSystemResourceAsStream(baseResourcePath.concat(sysId));

                return ((relativeResourceStream != null) ? new StreamSource(relativeResourceStream) : super.internalResolve(sysId, baseUri));
            }
        });

        transformer.transform(new StreamSource(testInputFile.getInputStream()), validationResultOutStream);

        Map<Boolean, List<StaticError>> errorGroups = errors.stream().collect(Collectors.groupingBy(StaticError::isWarning));
        boolean validationFailure = !CollectionUtils.isEmpty(errorGroups.get(true));

        LOGGER.info(String.format("Input file (path=%s) is %svalid: warning(s): %d, error(s): %d", testInputFile.getURL().toString(), (validationFailure
            ? "in" : StringUtils.EMPTY), CollectionUtils.size(errorGroups.get(false)), CollectionUtils.size(errorGroups.get(true))));

        Optional.ofNullable(errorGroups.get(false)).ifPresent(
            errorGroup -> errorGroup.stream().forEach(warning -> LOGGER.warn(warning.getUnderlyingException().getMessageAndLocation())));

        if (validationFailure) {
            errorGroups.get(true).stream().forEach(fatalError -> LOGGER.error(fatalError.getUnderlyingException().getMessageAndLocation()));
        }

        String testOutBaseFileName = testOutputBaseFile.getPath();
        ByteArrayOutputStream testOutStream = new ByteArrayOutputStream();

        this.transformerFactory.newTransformer().transform(new DOMSource(validationResultDoc), new StreamResult(testOutStream));

        IOUtils.write(testOutStream.toByteArray(), new FileOutputStream(new File(testOutBaseFileName + ".xml")));

        Transformer transformerHtml =
            this.transformerFactory.newTransformer(new StreamSource(ClassLoader
                .getSystemResourceAsStream("META-INF/crigtt/schematron/iso-schematron-xslt2/svrl_to_html.xsl")));
        transformerHtml.transform(new StreamSource(new ByteArrayInputStream(testOutStream.toByteArray())), new StreamResult(new File(testOutBaseFileName
            + ".html")));
    }
}
