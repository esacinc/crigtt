package gov.hhs.onc.crigtt.xml.utils;

import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.*;

public final class CrigttXmlUtils {
    private CrigttXmlUtils() {
    }

    public static List<String> buildTextContent(Element elem) {
        return buildTextContent(new ArrayList<>(), elem);
    }

    public static List<String> buildTextContent(List<String> textContent, Element elem) {
        NodeList childNodes = elem.getChildNodes();
        Node childNode;

        for (int a = 0; a < childNodes.getLength(); a++) {
            if ((childNode = childNodes.item(a)) instanceof CharacterData) {
                textContent.add(((CharacterData) childNode).getData());
            } else if (childNode instanceof Element) {
                buildTextContent(textContent, ((Element) childNode));
            }
        }

        return textContent;
    }
}
