package gov.hhs.onc.crigtt.context.impl;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.SpringApplicationRunListener;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.ConfigurableEnvironment;

public abstract class AbstractCrigttApplicationRunListener implements SpringApplicationRunListener {
    protected SpringApplication app;
    protected String[] args;

    protected AbstractCrigttApplicationRunListener(SpringApplication app, String[] args) {
        this.app = app;
        this.args = args;
    }

    @Override
    public void finished(ConfigurableApplicationContext appContext, Throwable exception) {
    }

    @Override
    public void contextLoaded(ConfigurableApplicationContext appContext) {
    }

    @Override
    public void contextPrepared(ConfigurableApplicationContext appContext) {
    }

    @Override
    public void environmentPrepared(ConfigurableEnvironment env) {
    }

    @Override
    public void started() {
    }
}
