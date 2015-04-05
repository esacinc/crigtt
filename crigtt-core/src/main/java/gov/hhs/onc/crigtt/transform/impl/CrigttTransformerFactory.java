package gov.hhs.onc.crigtt.transform.impl;

import gov.hhs.onc.crigtt.config.impl.CrigttConfiguration;
import java.util.Properties;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import net.sf.saxon.TransformerFactoryImpl;

public class CrigttTransformerFactory extends TransformerFactoryImpl {
    public CrigttTransformerFactory(CrigttConfiguration config) {
        super(config);
    }

    public Transformer newHtmlTransformer(Source src) throws TransformerConfigurationException {
        return newTransformer(this.newTransformer(src), this.getConfiguration().getHtmlOutputProperties());
    }

    public Transformer newHtmlTransformer() throws TransformerConfigurationException {
        return newTransformer(this.newTransformer(), this.getConfiguration().getHtmlOutputProperties());
    }

    public Transformer newXmlTransformer(Source src) throws TransformerConfigurationException {
        return newTransformer(this.newTransformer(src), this.getConfiguration().getXmlOutputProperties());
    }

    public Transformer newXmlTransformer() throws TransformerConfigurationException {
        return newTransformer(this.newTransformer(), this.getConfiguration().getXmlOutputProperties());
    }

    private static Transformer newTransformer(Transformer transformer, Properties configOutProps) {
        transformer.setOutputProperties(configOutProps);

        return transformer;
    }

    @Override
    public CrigttConfiguration getConfiguration() {
        return ((CrigttConfiguration) super.getConfiguration());
    }
}
