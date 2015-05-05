package gov.hhs.onc.crigtt.config.impl;

import com.ctc.wstx.sax.WstxSAXParserFactory;
import java.util.Map;
import javax.annotation.Resource;
import javax.xml.transform.TransformerFactoryConfigurationError;
import net.sf.saxon.Configuration;
import net.sf.saxon.lib.FeatureKeys;
import net.sf.saxon.trans.LicenseException;
import net.sf.saxon.trans.XPathException;
import org.apache.commons.lang3.StringUtils;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

public class CrigttConfiguration extends Configuration {
    @Resource(name = "saxParserFactoryCrigtt")
    private WstxSAXParserFactory saxParserFactory;

    {
        this.setSourceParserClass(StringUtils.EMPTY);
        this.setStyleParserClass(StringUtils.EMPTY);
    }

    @Override
    public XMLReader makeParser(String className) throws TransformerFactoryConfigurationError {
        try {
            return this.saxParserFactory.newSAXParser().getXMLReader();
        } catch (SAXException e) {
            throw new TransformerFactoryConfigurationError(new XPathException(e));
        }
    }

    @Override
    public void checkLicensedFeature(int featureId, String featureName) throws LicenseException {
    }

    public void setConfigurationProperties(Map<String, ?> configProps) {
        configProps.forEach(this::setConfigurationProperty);
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
