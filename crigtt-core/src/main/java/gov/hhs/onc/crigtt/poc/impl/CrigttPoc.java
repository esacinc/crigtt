package gov.hhs.onc.crigtt.poc.impl;

import com.helger.commons.GlobalDebug;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.support.ResourcePatternResolver;

@ImportResource({ (ResourcePatternResolver.CLASSPATH_ALL_URL_PREFIX + "META-INF/crigtt/spring/spring-crigtt*.xml") })
public class CrigttPoc {
    static {
        GlobalDebug.setDebugModeDirect(true);
    }

    public static void main(String ... args) {
        ClassPathXmlApplicationContext appContext = new ClassPathXmlApplicationContext(CrigttPoc.class.getAnnotation(ImportResource.class).value());
        
        
    }
}
