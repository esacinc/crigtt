package gov.hhs.onc.crigtt.config.impl;

import java.util.Map;
import javax.annotation.Nonnegative;
import net.sf.saxon.Configuration;
import net.sf.saxon.lib.FeatureKeys;

public class CrigttConfiguration extends Configuration {
    public void setOptimizationLevel(@Nonnegative int optimizationLevel) {
        this.optimizationLevel = optimizationLevel;
    }

    public void setProperties(Map<String, ?> props) {
        props.forEach(this::setConfigurationProperty);
    }

    public void setXsdVersion(int xsdVersion) {
        this.xsdVersion = xsdVersion;
    }

    public void setXsltVersion(String xsltVersion) {
        this.setConfigurationProperty(FeatureKeys.XSLT_VERSION, xsltVersion);
    }
}
