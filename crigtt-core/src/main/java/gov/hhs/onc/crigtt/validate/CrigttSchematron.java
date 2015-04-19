package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.api.schematron.ResolvedPhase;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.Map;
import javax.xml.transform.Source;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XsltExecutable;
import org.springframework.beans.factory.InitializingBean;

public interface CrigttSchematron extends InitializingBean {
    public XdmDocument transform(Source docSrc) throws SaxonApiException;

    public String getDescription();

    public void setDescription(String desc);

    public String getDisplayId();

    public void setDisplayId(String displayId);

    public String getId();

    public void setId(String id);

    public Map<String, ?> getParameters();

    public void setParameters(Map<String, ?> params);

    public Map<String, Source> getReferencedDocuments();

    public void setReferencedDocuments(Map<String, Source> referencedDocs);

    public Map<String, ResolvedPhase> getResolvedPhases();

    public Source getSource();

    public void setSource(Source src);

    public XsltExecutable[] getXsltExecutables();

    public void setXsltExecutables(XsltExecutable ... xsltExecs);
}
