package gov.hhs.onc.crigtt.validate.vocab.loader.impl;

import com.orientechnologies.orient.core.record.impl.ODocument;
import gov.hhs.onc.crigtt.validate.vocab.VocabFields;
import gov.hhs.onc.crigtt.validate.vocab.utils.CrigttVocabUtils;
import java.util.Map;
import org.sitenv.vocabularies.loader.code.icd10.Icd10CmLoader;
import org.springframework.stereotype.Component;

@Component("codeLoaderIcd10Cm")
public class CrigttIcd10CmLoader extends Icd10CmLoader {
    @Override
    protected void loadDocument(ODocument doc, Map<String, String> fields) {
        super.loadDocument(doc, fields);

        if (fields.get(VocabFields.CODE_NAME).length() > 3) {
            fields.put(VocabFields.CODE_NAME, CrigttVocabUtils.buildDelimitedIcdCode(fields.get(VocabFields.CODE_NAME)));

            super.loadDocument(doc, fields);
        }
    }
}
