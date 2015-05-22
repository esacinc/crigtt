package gov.hhs.onc.crigtt.test.impl;

import gov.hhs.onc.crigtt.context.impl.CrigttApplicationConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.test.SpringApplicationContextLoader;

public class CrigttApplicationContextLoader extends SpringApplicationContextLoader {
    @Override
    protected SpringApplication getSpringApplication() {
        return CrigttApplicationConfiguration.buildApplication();
    }
}
