package gov.hhs.onc.crigtt.validate.vocab;

import java.util.List;
import java.util.Map;
import javax.xml.transform.Source;
import org.springframework.beans.factory.InitializingBean;

public interface VocabService extends InitializingBean {
    public List<Code> findCodesByCodeSystem(String codeSystemId, String codeId);

    public List<Code> findCodesByCodeSystem(boolean forValueSet, String codeSystemId, String codeId);

    public List<Code> findCodesByValueSet(String valueSetId, String codeId);

    public List<Code> findCodesByValueSet(String valueSetId, String codeSystemId, String codeId);

    public String processTestExpression(String assertionId, String testExpr);

    public Map<String, VocabAssertion> getAssertions();

    public Source getAssertionSource();

    public void setAssertionSource(Source assertionSrc);

    public Map<String, String> getInitialTestExpressions();
}
