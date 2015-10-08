package gov.hhs.onc.crigtt.validate.testcases.utils;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.validate.testcases.Testcase;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import javax.xml.bind.JAXBElement;
import javax.xml.transform.Source;
import org.springframework.context.ApplicationContext;

public final class TestcaseUtils {
    private final static String TESTCASE_SOURCES_BEAN_NAME = "testcaseSources";

    private TestcaseUtils() {
    }

    public static List<Testcase> buildTestcases(ApplicationContext appContext, CrigttJaxbMarshaller jaxbMarshaller) {
        return buildTestcases(Arrays.asList(appContext.getBean(TESTCASE_SOURCES_BEAN_NAME, ResourceSource[].class)), jaxbMarshaller);
    }

    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public static List<Testcase> buildTestcases(List<Source> sources, CrigttJaxbMarshaller jaxbMarshaller) {
        return sources.stream().map(source -> ((JAXBElement<Testcase>) jaxbMarshaller.unmarshal(source, JAXBElement.class)).getValue())
            .collect(Collectors.toList());
    }
}
