package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.api.schematron.svrl.SchematronOutput;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.Map;

public interface SchematronValidatorResult {
    public XdmDocument getDocument();

    public void setDocument(XdmDocument doc);

    public Map<String, SchematronPatternResult> getPatternResults();

    public void setPatternResults(Map<String, SchematronPatternResult> patternResults);

    public SchematronOutput getOutput();

    public void setOutput(SchematronOutput output);
}
