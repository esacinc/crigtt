package gov.hhs.onc.crigtt.transform.impl;

import java.io.UnsupportedEncodingException;
import java.util.Properties;
import javax.annotation.Nullable;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.Serializer;
import net.sf.saxon.s9api.XdmNode;

public class CrigttSerializer extends Serializer {
    private Properties defaultOutProps;

    public CrigttSerializer(CrigttProcessor processor) {
        this(processor, null);
    }

    public CrigttSerializer(CrigttProcessor processor, @Nullable Properties outProps) {
        super(processor);

        if (outProps != null) {
            this.setOutputProperties(outProps);
        }
    }

    public byte[] serializeNodeToBytes(XdmNode node) throws SaxonApiException {
        String encName = this.getOutputProperty(Property.ENCODING), outStr = this.serializeNodeToString(node);

        try {
            return ((encName != null) ? outStr.getBytes(encName) : outStr.getBytes());
        } catch (UnsupportedEncodingException e) {
            throw new SaxonApiException(String.format("Unable to use encoding (name=%s) for serializing node string to bytes.", encName), e);
        }
    }

    @Nullable
    public Properties getDefaultOutputProperties() {
        return this.defaultOutProps;
    }

    @Override
    protected void setDefaultOutputProperties(@Nullable Properties defaultOutProps) {
        super.setDefaultOutputProperties((this.defaultOutProps = defaultOutProps));
    }

    @Override
    public Properties getOutputProperties() {
        return super.getOutputProperties();
    }

    public void setOutputProperties(Properties outProps) {
        outProps.stringPropertyNames().forEach(outPropName -> this.setOutputProperty(Property.get(outPropName), outProps.getProperty(outPropName)));
    }

    @Override
    public CrigttProcessor getProcessor() {
        return ((CrigttProcessor) super.getProcessor());
    }
}
