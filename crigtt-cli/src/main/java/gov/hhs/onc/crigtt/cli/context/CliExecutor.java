package gov.hhs.onc.crigtt.cli.context;

import gov.hhs.onc.crigtt.cli.validate.CliValidatorService;

public interface CliExecutor {
    public void execute(CliValidatorService service, String ... args);
}
