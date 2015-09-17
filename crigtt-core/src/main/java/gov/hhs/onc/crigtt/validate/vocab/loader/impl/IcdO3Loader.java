package gov.hhs.onc.crigtt.validate.vocab.loader.impl;

import com.orientechnologies.orient.core.record.impl.ODocument;
import com.orientechnologies.orient.object.db.OObjectDatabaseTx;
import gov.hhs.onc.crigtt.validate.vocab.VocabFields;
import gov.hhs.onc.crigtt.validate.vocab.model.impl.IcdO3Model;
import java.io.File;
import java.io.FileInputStream;
import java.util.LinkedHashMap;
import java.util.Map;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.sitenv.vocabularies.loader.VocabularyLoader;
import org.sitenv.vocabularies.repository.VocabularyRepository;
import org.springframework.stereotype.Component;

@Component("codeLoaderIcdO3")
public class IcdO3Loader extends VocabularyLoader<IcdO3Model> {
    public IcdO3Loader() {
        super(IcdO3Model.class);
    }

    @Override
    protected int loadFile(VocabularyRepository vocabRepo, OObjectDatabaseTx dbConnection, ODocument doc, Map<String, String> baseFields, File file)
        throws Exception {
        int fileCount = 0;

        try (HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream(file))) {
            HSSFSheet sheet = workbook.getSheetAt(0);
            HSSFRow row;
            Map<String, String> fields;

            for (int rowIndex = 1; rowIndex <= sheet.getLastRowNum(); rowIndex++) {
                row = sheet.getRow(rowIndex);

                fields = new LinkedHashMap<>();
                fields.put("code", row.getCell(4).getStringCellValue());
                fields.put("displayName", row.getCell(5).getStringCellValue());
                fields.putAll(baseFields);

                this.loadDocument(doc, fields);

                fileCount++;
            }
        }

        return fileCount;
    }

    @Override
    protected Map<String, String> buildBaseFields() {
        Map<String, String> baseFields = super.buildBaseFields();
        baseFields.put(VocabFields.CODE_SYSTEM_ID_NAME, IcdO3Model.CODE_SYSTEM_ID);
        baseFields.put(VocabFields.CODE_SYSTEM_NAME_NAME, IcdO3Model.CODE_SYSTEM_NAME);

        return baseFields;
    }
}
