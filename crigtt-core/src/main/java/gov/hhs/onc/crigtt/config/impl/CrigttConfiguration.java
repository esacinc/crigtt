package gov.hhs.onc.crigtt.config.impl;

import java.util.Properties;
import net.sf.saxon.Configuration;
import net.sf.saxon.lib.FeatureKeys;
import net.sf.saxon.trans.LicenseException;

public class CrigttConfiguration extends Configuration {
    private Properties htmlOutProps = new Properties();
    private Properties xmlOutProps = new Properties();

    @Override
    public void checkLicensedFeature(int featureId, String featureName) throws LicenseException {
    }

    public Properties getHtmlOutputProperties() {
        return this.htmlOutProps;
    }

    public void setHtmlOutputProperties(Properties htmlOutProps) {
        this.htmlOutProps.clear();
        this.htmlOutProps.putAll(htmlOutProps);
    }

    public boolean isSchemaAware() {
        return this.getDefaultXsltCompilerInfo().isSchemaAware();
    }

    public void setSchemaAware(boolean schemaAware) {
        this.getDefaultXsltCompilerInfo().setSchemaAware(schemaAware);
    }

    public Properties getXmlOutputProperties() {
        return this.xmlOutProps;
    }

    public void setXmlOutputProperties(Properties xmlOutProps) {
        this.xmlOutProps.clear();
        this.xmlOutProps.putAll(xmlOutProps);
    }

    public void setXsltVersion(String xsltVersion) {
        this.setConfigurationProperty(FeatureKeys.XSLT_VERSION, xsltVersion);
    }
}
