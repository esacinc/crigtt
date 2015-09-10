package gov.hhs.onc.crigtt.data.cache.impl;

import gov.hhs.onc.crigtt.data.impl.MapKey;
import java.util.Optional;
import net.sf.ehcache.Element;
import net.sf.ehcache.search.attribute.AttributeExtractor;
import net.sf.ehcache.search.attribute.AttributeExtractorException;
import org.springframework.stereotype.Component;

@Component("attrExtractorMapKey")
public class MapKeyExtractor implements AttributeExtractor {
    private final static long serialVersionUID = 0L;

    @Override
    public Object attributeFor(Element elem, String attrName) throws AttributeExtractorException {
        return Optional.ofNullable(((MapKey) elem.getObjectKey()).get(attrName)).orElse(MapKey.NULL_VALUE);
    }
}
