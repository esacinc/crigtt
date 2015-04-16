package gov.hhs.onc.crigtt.transform.impl;

import gov.hhs.onc.crigtt.config.impl.CrigttConfiguration;
import gov.hhs.onc.crigtt.transform.CrigttOutputMethods;
import java.util.Properties;
import javax.annotation.Nonnegative;
import net.sf.saxon.event.Receiver;
import net.sf.saxon.lib.SaxonOutputKeys;
import net.sf.saxon.lib.SerializerFactory;
import net.sf.saxon.serialize.HTMLIndenter;
import net.sf.saxon.serialize.XMLEmitter;
import net.sf.saxon.serialize.XMLIndenter;

public class CrigttSerializerFactory extends SerializerFactory {
    private static class CrigttHtmlIndenter extends HTMLIndenter {
        private int indentSpaces;
        private int lineLen;

        public CrigttHtmlIndenter(Receiver nextReceiver, Properties outProps) {
            super(nextReceiver, CrigttOutputMethods.HTML);

            this.indentSpaces =
                (outProps.containsKey(SaxonOutputKeys.INDENT_SPACES) ? Integer.parseInt(outProps.getProperty(SaxonOutputKeys.INDENT_SPACES)) : this
                    .getIndentation());
            this.lineLen =
                (outProps.containsKey(SaxonOutputKeys.LINE_LENGTH) ? Integer.parseInt(outProps.getProperty(SaxonOutputKeys.LINE_LENGTH)) : this.getLineLength());
        }

        @Nonnegative
        @Override
        public int getIndentation() {
            return this.indentSpaces;
        }

        @Nonnegative
        @Override
        public int getLineLength() {
            return this.lineLen;
        }
    }

    private static class CrigttXmlIndenter extends XMLIndenter {
        private int indentSpaces;
        private int lineLen;

        public CrigttXmlIndenter(XMLEmitter nextReceiver, Properties outProps) {
            super(nextReceiver);

            this.setOutputProperties(outProps);
            this.indentSpaces =
                (outProps.containsKey(SaxonOutputKeys.INDENT_SPACES) ? Integer.parseInt(outProps.getProperty(SaxonOutputKeys.INDENT_SPACES)) : this
                    .getIndentation());
            this.lineLen =
                (outProps.containsKey(SaxonOutputKeys.LINE_LENGTH) ? Integer.parseInt(outProps.getProperty(SaxonOutputKeys.LINE_LENGTH)) : this.getLineLength());
        }

        @Nonnegative
        @Override
        public int getIndentation() {
            return this.indentSpaces;
        }

        @Nonnegative
        @Override
        public int getLineLength() {
            return this.lineLen;
        }
    }

    public CrigttSerializerFactory(CrigttConfiguration config) {
        super(config);

        config.setSerializerFactory(this);
    }

    @Override
    protected CrigttHtmlIndenter newHTMLIndenter(Receiver nextReceiver, Properties outProps) {
        return new CrigttHtmlIndenter(nextReceiver, outProps);
    }

    @Override
    protected CrigttXmlIndenter newXMLIndenter(XMLEmitter nextReceiver, Properties outProps) {
        return new CrigttXmlIndenter(nextReceiver, outProps);
    }
}
