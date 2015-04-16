package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import java.util.Map;
import javax.xml.transform.Source;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XsltExecutable;
import org.springframework.beans.factory.InitializingBean;

public interface CrigttSchematron extends InitializingBean {
    public XdmNode transform(Source docSrc) throws SaxonApiException;

    public String getDescription();

    public void setDescription(String desc);

    public String getDisplayName();

    public void setDisplayName(String displayName);

    public String getName();

    public void setName(String name);

    public Map<String, ?> getParameters();

    public void setParameters(Map<String, ?> params);

    public Map<String, Source> getReferencedDocuments();

    public void setReferencedDocuments(Map<String, Source> referencedDocs);

    public Map<String, ResolvedPattern> getResolvedPatterns();

    public Source getSource();

    public void setSource(Source src);

    public XsltExecutable[] getXsltExecutables();

    public void setXsltExecutables(XsltExecutable ... xsltExecs);
}
