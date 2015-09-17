package gov.hhs.onc.crigtt.validate.vocab.loader.impl;

import com.orientechnologies.orient.core.record.impl.ODocument;
import gov.hhs.onc.crigtt.validate.vocab.VocabFields;
import gov.hhs.onc.crigtt.validate.vocab.utils.CrigttVocabUtils;
import java.util.Map;
import org.sitenv.vocabularies.loader.code.icd9.Icd9CmDxLoader;
import org.springframework.stereotype.Component;

@Component("codeLoaderIcd9CmDx")
public class CrigttIcd9CmDxLoader extends Icd9CmDxLoader {
    @Override
    protected void loadDocument(ODocument doc, Map<String, String> fields) {
        super.loadDocument(doc, fields);

        fields.put(VocabFields.CODE_NAME, CrigttVocabUtils.buildDelimitedIcdCode(fields.get(VocabFields.CODE_NAME)));

        super.loadDocument(doc, fields);
    }
}