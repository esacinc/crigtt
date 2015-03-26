package gov.hhs.onc.crigtt.poc.impl;

import com.helger.commons.xml.transform.DefaultTransformURIResolver;
import com.helger.commons.xml.transform.StringStreamResult;
import gov.hhs.onc.crigtt.test.impl.AbstractCrigttTests;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.Resource;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamSource;
import net.sf.saxon.lib.ErrorGatherer;
import net.sf.saxon.s9api.StaticError;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.poc" })
public class CrigttPocTests extends AbstractCrigttTests {
    private final static Logger LOGGER = LoggerFactory.getLogger(CrigttPocTests.class);

    @Value("classpath:${crigtt.test.input.file.1.path}")
    private org.springframework.core.io.Resource testInputFile1;

    @Resource(name = "templatesSchematronCcdaR2")
    private Templates templatesSchematronCcdaR2;

    @Test
    public void testPoc() throws Exception {
        List<StaticError> errors = new ArrayList<>();
        StringStreamResult validationResult = new StringStreamResult();

        Transformer transformerSchematronCcdaR2 = this.templatesSchematronCcdaR2.newTransformer();
        transformerSchematronCcdaR2.setErrorListener(new ErrorGatherer(errors));
        transformerSchematronCcdaR2.setURIResolver(new DefaultTransformURIResolver() {
            @Nullable
            @Override
            protected Source internalResolve(String sysId, @Nullable String baseUri) throws TransformerException {
                InputStream relativeResourceStream = ClassLoader.getSystemResourceAsStream("META-INF/crigtt/schematron/c-cda-r2/".concat(sysId));

                if (relativeResourceStream != null) {
                    return new StreamSource(relativeResourceStream);
                }

                return super.internalResolve(sysId, baseUri);
            }
        });
        transformerSchematronCcdaR2.transform(new StreamSource(this.testInputFile1.getInputStream()), validationResult);

        for (StaticError error : errors) {
            LOGGER.info(ReflectionToStringBuilder.toString(error));
        }
    }
}
