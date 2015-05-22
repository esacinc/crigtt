package gov.hhs.onc.crigtt.web.test.impl;

import gov.hhs.onc.crigtt.test.impl.CrigttApplicationContextLoader;
import gov.hhs.onc.crigtt.web.context.impl.CrigttWebApplicationContext;
import org.springframework.boot.SpringApplication;

public class CrigttWebApplicationContextLoader extends CrigttApplicationContextLoader {
    @Override
    protected SpringApplication getSpringApplication() {
        SpringApplication app = super.getSpringApplication();
        app.setApplicationContextClass(CrigttWebApplicationContext.class);
        app.setWebEnvironment(true);

        return app;
    }
}
