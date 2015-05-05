package gov.hhs.onc.crigtt.test.impl;

import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.support.DependencyInjectionTestExecutionListener;
import org.springframework.test.context.support.DirtiesContextTestExecutionListener;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.annotations.Test;

@ContextConfiguration({ (ResourcePatternResolver.CLASSPATH_ALL_URL_PREFIX + "META-INF/crigtt/spring/spring-crigtt*.xml") })
@Test(groups = { "crigtt.test.all" })
@TestExecutionListeners(listeners = { DependencyInjectionTestExecutionListener.class, DirtiesContextTestExecutionListener.class }, inheritListeners = false)
public abstract class AbstractCrigttTests extends AbstractTestNGSpringContextTests {
}
