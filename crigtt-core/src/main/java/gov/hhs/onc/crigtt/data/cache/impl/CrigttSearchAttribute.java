package gov.hhs.onc.crigtt.data.cache.impl;

import net.sf.ehcache.config.SearchAttribute;
import net.sf.ehcache.search.attribute.AttributeExtractor;

public class CrigttSearchAttribute extends SearchAttribute {
    private AttributeExtractor extractor;

    @Override
    public AttributeExtractor constructExtractor(ClassLoader classLoader) {
        return ((this.extractor != null) ? this.extractor : super.constructExtractor(classLoader));
    }

    public AttributeExtractor getExtractor() {
        return this.extractor;
    }

    public void setExtractor(AttributeExtractor extractor) {
        this.extractor = extractor;
    }

    public void setTypeClass(Class<?> typeClass) {
        this.setType(typeClass);
    }
}
