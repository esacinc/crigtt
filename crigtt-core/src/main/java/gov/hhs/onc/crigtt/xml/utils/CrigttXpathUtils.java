package gov.hhs.onc.crigtt.xml.utils;

import gov.hhs.onc.crigtt.xml.utils.CrigttXmlUtils.NamedNodeMapList;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public final class CrigttXpathUtils {
    public final static String EXPR_DELIM = "/";

    public final static String ATTR_EXPR_PREFIX = "@";
    public final static String SUB_EXPR_PREFIX = "[";

    public final static String SUB_EXPR_SUFFIX = "]";

    private CrigttXpathUtils() {
    }

    public static String buildAbsoluteExpression(Node node) {
        return buildAbsoluteExpression(true, node);
    }

    public static String buildAbsoluteExpression(boolean includeNs, Node node) {
        boolean attrNode = (node.getNodeType() == Node.ATTRIBUTE_NODE);
        String nodeName = (includeNs ? node.getNodeName() : node.getLocalName()), nodeExpr = nodeName;

        if (attrNode) {
            nodeExpr = ATTR_EXPR_PREFIX + nodeExpr;
        }

        nodeExpr = EXPR_DELIM + nodeExpr;

        Node parentNode = node.getParentNode();

        if ((parentNode != null) && !(parentNode instanceof Document)) {
            boolean matchedNode = false, matchedSiblingNode = false;
            NodeList siblingNodes = (attrNode ? new NamedNodeMapList(parentNode.getAttributes()) : parentNode.getChildNodes());
            Node siblingNode;
            int nodeIndex = -1;

            for (int a = 0; a < siblingNodes.getLength(); a++) {
                if ((siblingNode = siblingNodes.item(a)).isSameNode(node)) {
                    matchedNode = true;

                    nodeIndex++;
                } else if ((includeNs ? siblingNode.getNodeName() : siblingNode.getLocalName()).equals(nodeName)) {
                    matchedSiblingNode = true;

                    if (!matchedNode) {
                        nodeIndex++;
                    }
                }
            }

            if (matchedSiblingNode) {
                nodeExpr += SUB_EXPR_PREFIX + nodeIndex + SUB_EXPR_SUFFIX;
            }

            nodeExpr = buildAbsoluteExpression(includeNs, parentNode) + nodeExpr;
        }

        return nodeExpr;
    }
}
