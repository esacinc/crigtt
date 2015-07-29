package gov.hhs.onc.crigtt.validate.vocab.impl;

import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.validate.impl.AbstractValidatorTask;
import gov.hhs.onc.crigtt.validate.vocab.DynamicVocabService;
import gov.hhs.onc.crigtt.validate.vocab.DynamicVocabValidatorTask;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;

public class DynamicVocabValidatorTaskImpl extends AbstractValidatorTask implements DynamicVocabValidatorTask {
    @Resource(name = "vocabServiceDynamicCrigtt")
    private DynamicVocabService service;
    
    public DynamicVocabValidatorTaskImpl(XdmDocument doc, ByteArraySource docSrc, String docFileName, Map<String, String> docNamespaces) {
        super(doc, docSrc, docFileName, docNamespaces);
    }
    
    @Override
    public List<ValidatorEvent> call() throws Exception {
        return this.service.validate(this.xpathContext, this.doc, this.docSrc);
    }
}
