package gov.hhs.onc.crigtt.validate;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPhase;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.Map;
import java.util.function.Function;
import javax.xml.transform.Source;
import net.sf.saxon.event.Receiver;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XsltExecutable;
import org.springframework.beans.factory.InitializingBean;

public interface CrigttSchematron extends InitializingBean {
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public XdmDocument transform(Source docSrc, Function<Receiver, Receiver> ... docResultFilterBuilders) throws SaxonApiException;

    public String getDescription();

    public void setDescription(String desc);

    public String getDisplayId();

    public void setDisplayId(String displayId);

    public String getId();

    public void setId(String id);

    public Map<String, ?> getParameters();

    public void setParameters(Map<String, ?> params);

    public String getQueryBinding();

    public void setQueryBinding(String queryBinding);

    public Map<String, Source> getReferencedDocuments();

    public void setReferencedDocuments(Map<String, Source> referencedDocs);

    public Map<String, ResolvedPhase> getResolvedPhases();

    public String getSchemaVersion();

    public void setSchemaVersion(String schemaVersion);

    public Source getSource();

    public void setSource(Source src);

    public XsltExecutable[] getXsltExecutables();

    public void setXsltExecutables(XsltExecutable ... xsltExecs);

    public String getTitle();

    public void setTitle(String title);
}
