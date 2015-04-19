package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.SchematronValidationRequest;
import java.util.Map;

public class SchematronValidationRequestImpl extends AbstractCrigttValidationRequest implements SchematronValidationRequest {
    private Map<String, String> namespaces;

    @Override
    public Map<String, String> getNamespaces() {
        return this.namespaces;
    }

    @Override
    public void setNamespaces(Map<String, String> namespaces) {
        this.namespaces = namespaces;
    }
}
