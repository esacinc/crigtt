package gov.hhs.onc.crigtt.cli.context.impl;

import gov.hhs.onc.crigtt.cli.validate.CliValidatorService;
import gov.hhs.onc.crigtt.cli.context.CliExecutor;
import gov.hhs.onc.crigtt.context.impl.AbstractCrigttApplicationRunListener;
import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;

public class CliApplicationRunListener extends AbstractCrigttApplicationRunListener {
    private static class DefaultCliExecutor extends AbstractCliExecutor {
        public final static DefaultCliExecutor INSTANCE = new DefaultCliExecutor();
    }

    public CliApplicationRunListener(SpringApplication app, String[] args) {
        super(app, args);
    }

    @Override
    public void finished(ConfigurableApplicationContext appContext, Throwable exception) {
        buildComponent(CliExecutor.class, () -> DefaultCliExecutor.INSTANCE).execute(appContext.getBean(CliValidatorService.class), this.args);
    }
}
