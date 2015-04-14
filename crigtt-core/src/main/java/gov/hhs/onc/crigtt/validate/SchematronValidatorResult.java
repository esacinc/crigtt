package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.api.schematron.svrl.SchematronOutput;
import java.util.Map;
import net.sf.saxon.s9api.XdmNode;

public interface SchematronValidatorResult {
    public XdmNode getNode();

    public void setNode(XdmNode node);

    public Map<String, SchematronPatternResult> getPatternResults();

    public void setPatternResults(Map<String, SchematronPatternResult> patternResults);

    public SchematronOutput getOutput();

    public void setOutput(SchematronOutput output);
}
