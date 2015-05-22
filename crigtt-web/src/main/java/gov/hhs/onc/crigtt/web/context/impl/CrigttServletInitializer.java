package gov.hhs.onc.crigtt.web.context.impl;

import gov.hhs.onc.crigtt.context.impl.CrigttApplicationConfiguration;
import javax.servlet.ServletContext;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.context.web.ServletContextApplicationContextInitializer;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.web.context.ConfigurableWebApplicationContext;

public class CrigttServletInitializer extends SpringBootServletInitializer {
    @Override
    protected ConfigurableWebApplicationContext createRootApplicationContext(ServletContext servletContext) {
        SpringApplication app = CrigttApplicationConfiguration.buildApplication();
        app.setApplicationContextClass(CrigttWebApplicationContext.class);
        app.setWebEnvironment(true);

        app.addInitializers(new ServletContextApplicationContextInitializer(servletContext));
        
        return this.run(app);
    }

    @Override
    protected CrigttWebApplicationContext run(SpringApplication app) {
        return ((CrigttWebApplicationContext) super.run(app));
    }
}
