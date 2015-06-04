package gov.hhs.onc.crigtt.json.impl;

import com.fasterxml.jackson.databind.Module;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.Jackson2ObjectMapperFactoryBean;

public class CrigttObjectMapperFactoryBean extends Jackson2ObjectMapperFactoryBean {
    public void setFeatures(Map<Object, Boolean> features) {
        features.forEach(this::setFeature);
    }

    public void setFeature(Object feature, boolean featureValue) {
        if (featureValue) {
            this.setFeaturesToEnable(feature);
        } else {
            this.setFeaturesToDisable(feature);
        }
    }

    @Autowired
    @Override
    public void setModules(List<Module> modules) {
        super.setModules(modules);
    }
}
