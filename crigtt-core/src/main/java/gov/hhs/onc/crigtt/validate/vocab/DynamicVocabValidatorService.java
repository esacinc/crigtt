package gov.hhs.onc.crigtt.validate.vocab;

import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.io.IOException;
import java.util.List;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.sxpath.IndependentContext;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.xml.sax.SAXException;

public interface DynamicVocabValidatorService extends DisposableBean, InitializingBean {
    public List<ValidatorEvent> validate(IndependentContext xpathContext, XdmDocument doc, ByteArraySource docSrc) throws IOException, SAXException,
        SaxonApiException;

    public String[] getCodeLoaderClassNames();

    public void setCodeLoaderClassNames(String ... codeLoaderClassNames);

    public String[] getValueSetLoaderClassNames();

    public void setValueSetLoaderClassNames(String ... valueSetLoaderClassNames);
}
