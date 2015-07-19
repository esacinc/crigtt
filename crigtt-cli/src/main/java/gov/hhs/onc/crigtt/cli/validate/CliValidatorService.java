package gov.hhs.onc.crigtt.cli.validate;

import org.springframework.boot.ExitCodeGenerator;

public interface CliValidatorService extends ExitCodeGenerator {
    public void execute(String ... args);
}
