package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.svrl.SchematronOutput;
import gov.hhs.onc.crigtt.validate.SchematronPatternResult;
import gov.hhs.onc.crigtt.validate.SchematronValidatorResult;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.Map;

public class SchematronValidatorResultImpl implements SchematronValidatorResult {
    private XdmDocument doc;
    private Map<String, SchematronPatternResult> patternResults;
    private SchematronOutput output;

    @Override
    public XdmDocument getDocument() {
        return this.doc;
    }

    @Override
    public void setDocument(XdmDocument doc) {
        this.doc = doc;
    }

    @Override
    public Map<String, SchematronPatternResult> getPatternResults() {
        return this.patternResults;
    }

    @Override
    public void setPatternResults(Map<String, SchematronPatternResult> patternResults) {
        this.patternResults = patternResults;
    }

    @Override
    public SchematronOutput getOutput() {
        return this.output;
    }

    @Override
    public void setOutput(SchematronOutput output) {
        this.output = output;
    }
}
