package gov.hhs.onc.crigtt.xml.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.xml.XmlFactory;
import com.fasterxml.jackson.dataformat.xml.deser.FromXmlParser;
import com.fasterxml.jackson.dataformat.xml.ser.ToXmlGenerator;
import java.io.IOException;
import java.util.Map;
import javax.xml.stream.XMLStreamWriter;
import org.apache.cxf.staxutils.PrettyPrintXMLStreamWriter;

public class CrigttXmlFactory extends XmlFactory {
    private final static long serialVersionUID = 0L;

    private boolean indent;
    private int indentSpaces = -1;

    public CrigttXmlFactory(ObjectMapper objMapper, CrigttXmlInputFactory xmlInFactory, CrigttXmlOutputFactory xmlOutFactory) {
        super(objMapper, xmlInFactory, xmlOutFactory);
    }

    @Override
    public ToXmlGenerator createGenerator(XMLStreamWriter xmlStreamWriter) throws IOException {
        return super.createGenerator(((this.indent && (this.indentSpaces > 0))
            ? new PrettyPrintXMLStreamWriter(xmlStreamWriter, this.indentSpaces) : xmlStreamWriter));
    }

    public void setFeatures(Map<Object, Boolean> features) {
        features.forEach(this::setFeature);
    }

    public void setFeature(Object feature, boolean featureValue) {
        if (featureValue) {
            if (feature instanceof FromXmlParser.Feature) {
                this.enable(((FromXmlParser.Feature) feature));
            } else if (feature instanceof ToXmlGenerator.Feature) {
                this.enable(((ToXmlGenerator.Feature) feature));
            }
        } else {
            if (feature instanceof FromXmlParser.Feature) {
                this.disable(((FromXmlParser.Feature) feature));
            } else if (feature instanceof ToXmlGenerator.Feature) {
                this.disable(((ToXmlGenerator.Feature) feature));
            }
        }
    }

    public boolean isIndent() {
        return this.indent;
    }

    public void setIndent(boolean indent) {
        this.indent = indent;
    }

    public int getIndentSpaces() {
        return this.indentSpaces;
    }

    public void setIndentSpaces(int indentSpaces) {
        this.indentSpaces = indentSpaces;
    }
}
