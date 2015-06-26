package gov.hhs.onc.crigtt.xml.utils;

import gov.hhs.onc.crigtt.utils.CrigttIteratorUtils;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.collections4.iterators.NodeListIterator;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

public final class CrigttXmlUtils {
    public static class NamedNodeMapList implements NamedNodeMap, NodeList {
        private NamedNodeMap delegateMap;

        public NamedNodeMapList(NamedNodeMap delegateMap) {
            this.delegateMap = delegateMap;
        }

        @Override
        public Node removeNamedItemNS(String nsUri, String localName) throws DOMException {
            return this.delegateMap.removeNamedItemNS(nsUri, localName);
        }

        @Override
        public Node getNamedItemNS(String nsUri, String localName) throws DOMException {
            return this.delegateMap.getNamedItemNS(nsUri, localName);
        }

        @Override
        public Node setNamedItemNS(Node node) throws DOMException {
            return this.delegateMap.setNamedItemNS(node);
        }

        @Override
        public Node removeNamedItem(String name) throws DOMException {
            return this.delegateMap.removeNamedItem(name);
        }

        @Override
        public Node getNamedItem(String name) {
            return this.delegateMap.getNamedItem(name);
        }

        @Override
        public Node setNamedItem(Node node) throws DOMException {
            return this.delegateMap.setNamedItem(node);
        }

        @Override
        public Node item(int index) {
            return this.delegateMap.item(index);
        }

        @Override
        public int getLength() {
            return this.delegateMap.getLength();
        }
    }

    private CrigttXmlUtils() {
    }

    public static List<String> extractTextContent(Node node) {
        return extractTextContent(new ArrayList<>(), node);
    }

    public static List<String> extractTextContent(List<String> textContent, Node node) {
        CrigttIteratorUtils.stream(new NodeListIterator(node)).forEach(childNode -> {
            if (childNode instanceof Text) {
                textContent.add(childNode.getNodeValue());
            } else if (childNode instanceof Element) {
                extractTextContent(textContent, childNode);
            }
        });

        return textContent;
    }
}
