package gov.hhs.onc.crigtt.validate;

import java.util.Map;

public interface SchematronValidationRequest extends CrigttValidationRequest {
    public Map<String, String> getNamespaces();

    public void setNamespaces(Map<String, String> namespaces);
}
