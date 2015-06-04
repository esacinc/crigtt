package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.databind.util.TokenBuffer;
import gov.hhs.onc.crigtt.beans.CrigttNamedBean;
import gov.hhs.onc.crigtt.schematron.Assertion;
import gov.hhs.onc.crigtt.schematron.Pattern;
import gov.hhs.onc.crigtt.schematron.Rule;
import gov.hhs.onc.crigtt.schematron.dto.SchemaDto;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.List;
import java.util.Map;
import javax.xml.transform.Source;
import net.sf.saxon.s9api.XsltExecutable;
import org.springframework.beans.factory.InitializingBean;

public interface ValidatorSchematron extends CrigttNamedBean, InitializingBean {
    public XdmDocument transform(Source docSrc) throws Exception;

    public Map<String, List<Assertion>> getActiveAssertions();

    public Map<String, List<Pattern>> getActivePatterns();

    public Map<String, List<Rule>> getActiveRules();

    public Map<String, ?> getParameters();

    public void setParameters(Map<String, ?> params);

    public String getQueryBinding();

    public void setQueryBinding(String queryBinding);

    public Map<String, Source> getReferencedDocuments();

    public void setReferencedDocuments(Map<String, Source> referencedDocs);

    public SchemaDto getSchemaDto();

    public TokenBuffer getSchemaJson();

    public String getSchemaVersion();

    public void setSchemaVersion(String schemaVersion);

    public Source getSource();

    public void setSource(Source src);

    public XsltExecutable[] getXsltExecutables();

    public void setXsltExecutables(XsltExecutable ... xsltExecs);
}
