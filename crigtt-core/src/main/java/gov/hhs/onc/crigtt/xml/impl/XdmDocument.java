package gov.hhs.onc.crigtt.xml.impl;

import javax.annotation.Nullable;
import javax.xml.transform.dom.DOMSource;
import net.sf.saxon.dom.DocumentOverNodeInfo;
import net.sf.saxon.dom.NodeOverNodeInfo;
import net.sf.saxon.om.DocumentInfo;
import net.sf.saxon.s9api.XdmNode;

public class XdmDocument extends XdmNode {
    private DocumentOverNodeInfo doc;

    public XdmDocument(DocumentInfo docInfo) {
        this(docInfo, null);
    }

    public XdmDocument(DocumentInfo docInfo, @Nullable String sysId) {
        super(docInfo);

        this.doc = ((DocumentOverNodeInfo) NodeOverNodeInfo.wrap(docInfo));
    }

    public DocumentOverNodeInfo getDocument() {
        return this.doc;
    }

    public DOMSource getSource() {
        return new DOMSource(this.doc);
    }

    @Override
    public DocumentInfo getUnderlyingNode() {
        return ((DocumentInfo) super.getUnderlyingNode());
    }
}
