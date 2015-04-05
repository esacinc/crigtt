package gov.hhs.onc.crigtt.validate;

import javax.xml.transform.Source;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XsltCompiler;
import net.sf.saxon.s9api.XsltExecutable;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.ResourceLoaderAware;
import org.w3c.dom.Document;

public interface CrigttValidator extends InitializingBean, ResourceLoaderAware {
    public Document validate(Source src) throws SaxonApiException;

    public Source getSchemaSource();

    public void setSchemaSource(Source schemaSrc);

    public XsltExecutable[] getStylesheets();

    public void setStylesheets(XsltExecutable[] stylesheets);

    public XsltCompiler getXsltCompiler();

    public void setXsltCompiler(XsltCompiler xsltCompiler);
}
