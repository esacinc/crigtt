package gov.hhs.onc.crigtt.cli.test.impl;

import gov.hhs.onc.crigtt.cli.validate.CliValidatorService;
import gov.hhs.onc.crigtt.cli.context.impl.AbstractCliExecutor;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

@Order(Ordered.HIGHEST_PRECEDENCE)
public class TestCliExecutor extends AbstractCliExecutor {
    @Override
    public void execute(CliValidatorService service, String ... args) {
    }
}
