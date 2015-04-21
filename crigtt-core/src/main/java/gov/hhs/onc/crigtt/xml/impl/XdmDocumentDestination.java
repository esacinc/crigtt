package gov.hhs.onc.crigtt.xml.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import java.util.function.Function;
import net.sf.saxon.Configuration;
import net.sf.saxon.event.Receiver;
import net.sf.saxon.om.DocumentInfo;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XdmDestination;

public class XdmDocumentDestination extends XdmDestination {
    private Function<Receiver, Receiver>[] filterBuilders;

    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public XdmDocumentDestination(Function<Receiver, Receiver> ... filterBuilders) {
        this.filterBuilders = filterBuilders;
    }

    @Override
    public Receiver getReceiver(Configuration config) throws SaxonApiException {
        Receiver receiver = super.getReceiver(config);

        for (int a = (this.filterBuilders.length - 1); a >= 0; a--) {
            receiver = this.filterBuilders[a].apply(receiver);
        }

        return receiver;
    }

    @Override
    public XdmDocument getXdmNode() {
        return new XdmDocument(((DocumentInfo) super.getXdmNode().getUnderlyingNode()));
    }
}
