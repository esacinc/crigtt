package gov.hhs.onc.crigtt.validate.vocab.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import gov.hhs.onc.crigtt.data.cache.impl.CrigttCache;
import gov.hhs.onc.crigtt.data.impl.MapKey.MapKeyEntry;
import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.vocab.Code;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertion;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertions;
import gov.hhs.onc.crigtt.validate.vocab.VocabAttributes;
import gov.hhs.onc.crigtt.validate.vocab.VocabService;
import gov.hhs.onc.crigtt.validate.vocab.VocabSet;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import javax.annotation.Nullable;
import javax.annotation.Resource;
import javax.xml.bind.JAXBElement;
import javax.xml.transform.Source;
import net.sf.ehcache.search.expression.AlwaysMatch;
import net.sf.ehcache.search.expression.Criteria;
import net.sf.ehcache.search.expression.EqualTo;

public abstract class AbstractVocabService implements VocabService {
    protected final static MapKeyEntry GROUPING_VALUE_SET_ID_WILDCARD_ENTRY = new MapKeyEntry(VocabAttributes.GROUPING_VALUE_SET_ID_NAME, true);

    @Resource(name = "xpathCompilerCrigtt")
    protected CrigttXpathCompiler xpathCompiler;

    @Resource(name = "jaxbMarshallerValidate")
    protected CrigttJaxbMarshaller validateJaxbMarshaller;

    protected Source assertionSrc;
    protected CrigttCache codeCache;
    protected Map<String, VocabAssertion> assertions;
    protected Map<String, String> initialTestExprs;
    protected CrigttCache vocabSetCache;

    @Override
    public List<Code> findCodes(@Nullable String groupingValueSetId, @Nullable String valueSetId, @Nullable String codeSystemId, String codeId) {
        return this.codeCache.getValues(Code.class, buildOptionalCriteria(VocabAttributes.GROUPING_VALUE_SET_ID_NAME, groupingValueSetId),
            buildOptionalCriteria(VocabAttributes.VALUE_SET_ID_NAME, valueSetId), buildOptionalCriteria(VocabAttributes.CODE_SYSTEM_ID_NAME, codeSystemId),
            new EqualTo(VocabAttributes.CODE_ID_NAME, codeId));
    }

    @Nullable
    @Override
    public VocabSet findVocabSet(@Nullable String groupingValueSetId, @Nullable String valueSetId, @Nullable String codeSystemId) {
        return this.vocabSetCache.getValue(VocabSet.class, buildOptionalCriteria(VocabAttributes.GROUPING_VALUE_SET_ID_NAME, groupingValueSetId),
            buildOptionalCriteria(VocabAttributes.VALUE_SET_ID_NAME, valueSetId), buildOptionalCriteria(VocabAttributes.CODE_SYSTEM_ID_NAME, codeSystemId));
    }

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public void afterPropertiesSet() throws Exception {
        this.assertions =
            CrigttStreamUtils.toMap(IdentifiedBean::getId, Function.<VocabAssertion> identity(), LinkedHashMap::new,
                ((JAXBElement<VocabAssertions>) this.validateJaxbMarshaller.unmarshal(this.assertionSrc, JAXBElement.class)).getValue().getAssertions()
                    .stream());

        int numAssertions = this.assertions.size();

        this.initialTestExprs = new HashMap<>(numAssertions);
    }

    protected static Criteria buildOptionalCriteria(String attrName, @Nullable String attrValue) {
        return ((attrValue != null) ? new EqualTo(attrName, attrValue) : new AlwaysMatch());
    }

    @Override
    public Map<String, VocabAssertion> getAssertions() {
        return this.assertions;
    }

    @Override
    public Source getAssertionSource() {
        return this.assertionSrc;
    }

    @Override
    public void setAssertionSource(Source assertionSrc) {
        this.assertionSrc = assertionSrc;
    }

    @Override
    public CrigttCache getCodeCache() {
        return this.codeCache;
    }

    @Override
    public void setCodeCache(CrigttCache codeCache) {
        this.codeCache = codeCache;
    }

    @Override
    public Map<String, String> getInitialTestExpressions() {
        return this.initialTestExprs;
    }

    @Override
    public CrigttCache getVocabSetCache() {
        return this.vocabSetCache;
    }

    @Override
    public void setVocabSetCache(CrigttCache vocabSetCache) {
        this.vocabSetCache = vocabSetCache;
    }
}
