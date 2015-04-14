package gov.hhs.onc.crigtt.config.impl;

import net.sf.saxon.Configuration;
import net.sf.saxon.lib.FeatureKeys;
import net.sf.saxon.trans.LicenseException;

public class CrigttConfiguration extends Configuration {
    @Override
    public void checkLicensedFeature(int featureId, String featureName) throws LicenseException {
    }

    public boolean isSchemaAware() {
        return this.getDefaultXsltCompilerInfo().isSchemaAware();
    }

    public void setSchemaAware(boolean schemaAware) {
        this.getDefaultXsltCompilerInfo().setSchemaAware(schemaAware);
    }

    public void setXsltVersion(String xsltVersion) {
        this.setConfigurationProperty(FeatureKeys.XSLT_VERSION, xsltVersion);
    }
}
