package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.svrl.SchematronOutput;
import gov.hhs.onc.crigtt.validate.SchematronPatternResult;
import gov.hhs.onc.crigtt.validate.SchematronValidatorResult;
import java.util.Map;
import net.sf.saxon.s9api.XdmNode;

public class SchematronValidatorResultImpl implements SchematronValidatorResult {
    private XdmNode node;
    private Map<String, SchematronPatternResult> patternResults;
    private SchematronOutput output;

    @Override
    public XdmNode getNode() {
        return this.node;
    }

    @Override
    public void setNode(XdmNode node) {
        this.node = node;
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
