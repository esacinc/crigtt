package gov.hhs.onc.crigtt.validate;

import java.net.URI;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;

public interface ValidatorDynamicVocabTask extends ValidatorTask {
    public MediaType getPartContentType();

    public void setPartContentType(MediaType partContentType);

    public String getPartName();

    public void setPartName(String partName);

    public HttpHeaders getRequestHeaders();

    public void setRequestHeaders(HttpHeaders reqHeaders);

    public URI getServiceUri();

    public void setServiceUri(URI serviceUri);
}
