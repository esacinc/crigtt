package gov.hhs.onc.crigtt.cli.context.impl;

import gov.hhs.onc.crigtt.cli.validate.CliValidatorService;
import gov.hhs.onc.crigtt.cli.context.CliExecutor;

public abstract class AbstractCliExecutor implements CliExecutor {
    @Override
    public void execute(CliValidatorService service, String ... args) {
        service.execute(args);
    }
}
