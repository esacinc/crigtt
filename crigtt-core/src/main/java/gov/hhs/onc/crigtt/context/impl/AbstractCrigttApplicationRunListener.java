package gov.hhs.onc.crigtt.context.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.function.Supplier;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.reflect.ConstructorUtils;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.SpringApplicationRunListener;
import org.springframework.context.ApplicationContextException;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.annotation.AnnotationAwareOrderComparator;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.io.support.SpringFactoriesLoader;

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

    protected static <T> T buildInitializer(Class<T> initClass, Supplier<T> defaultInitSupplier, Object ... args) {
        List<String> initClassNames = SpringFactoriesLoader.loadFactoryNames(initClass, AbstractCrigttApplicationRunListener.class.getClassLoader());

        if (initClassNames.isEmpty()) {
            return defaultInitSupplier.get();
        }

        List<Class<?>> initClasses = ClassUtils.convertClassNamesToClasses(initClassNames);

        initClasses.sort(AnnotationAwareOrderComparator.INSTANCE);

        Class<?> primaryInitClass = initClasses.get(0);

        try {
            return initClass.cast(ConstructorUtils.invokeConstructor(primaryInitClass, args));
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException | NoSuchMethodException e) {
            throw new ApplicationContextException(String.format("Unable to instantiate initializer (class=%s).", primaryInitClass.getName()), e);
        }
    }
}
