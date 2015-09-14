package gov.hhs.onc.crigtt.validate.vocab;

import gov.hhs.onc.crigtt.data.cache.impl.CrigttCache;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import javax.xml.transform.Source;
import org.springframework.beans.factory.InitializingBean;

public interface VocabService extends InitializingBean {
    public List<Code> findCodes(@Nullable String groupingValueSetId, @Nullable String valueSetId, @Nullable String codeSystemId, String codeId);

    @Nullable
    public VocabSet findVocabSet(@Nullable String groupingValueSetId, @Nullable String valueSetId, @Nullable String codeSystemId);

    public String processTestExpression(String assertionId, String testExpr);

    public Map<String, VocabAssertion> getAssertions();

    public Source getAssertionSource();

    public void setAssertionSource(Source assertionSrc);

    public CrigttCache getCodeCache();

    public void setCodeCache(CrigttCache codeCache);

    public Map<String, String> getInitialTestExpressions();

    public CrigttCache getVocabSetCache();

    public void setVocabSetCache(CrigttCache vocabSetCache);
}
