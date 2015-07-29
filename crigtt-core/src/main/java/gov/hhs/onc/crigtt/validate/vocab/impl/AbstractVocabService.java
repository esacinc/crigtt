package gov.hhs.onc.crigtt.validate.vocab.impl;

import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.validate.vocab.VocabService;
import javax.annotation.Resource;

public abstract class AbstractVocabService implements VocabService {
    @Resource(name = "xpathCompilerCrigtt")
    protected CrigttXpathCompiler xpathCompiler;
}
