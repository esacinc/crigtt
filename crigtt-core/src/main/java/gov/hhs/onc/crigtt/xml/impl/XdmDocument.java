package gov.hhs.onc.crigtt.xml.impl;

import javax.annotation.Nullable;
import javax.xml.transform.dom.DOMSource;
import net.sf.saxon.dom.DocumentOverNodeInfo;
import net.sf.saxon.dom.NodeOverNodeInfo;
import net.sf.saxon.om.DocumentInfo;
import net.sf.saxon.s9api.XdmNode;

public class XdmDocument extends DocumentOverNodeInfo {
    private XdmNode node;
    private DocumentInfo docInfo;
    private DocumentOverNodeInfo doc;
    private DOMSource src;

    public XdmDocument(XdmNode node) {
        this(node, null);
    }

    public XdmDocument(XdmNode node, @Nullable String sysId) {
        this.src =
            new DOMSource(
                (this.doc = ((DocumentOverNodeInfo) NodeOverNodeInfo.wrap((this.docInfo = ((DocumentInfo) (this.node = node).getUnderlyingNode()))))), sysId);
    }

    public DocumentOverNodeInfo getDocument() {
        return this.doc;
    }

    public XdmNode getNode() {
        return this.node;
    }

    public DOMSource getSource() {
        return this.src;
    }

    @Override
    public DocumentInfo getUnderlyingNodeInfo() {
        return this.docInfo;
    }
}
