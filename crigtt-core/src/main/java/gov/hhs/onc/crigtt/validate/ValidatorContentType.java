package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.io.CrigttMediaTypes;
import org.springframework.http.MediaType;

public enum ValidatorContentType {
    JSON(MediaType.APPLICATION_JSON), PDF(CrigttMediaTypes.APPLICATION_PDF), XML(MediaType.TEXT_XML);

    private final MediaType type;

    private ValidatorContentType(MediaType type) {
        this.type = type;
    }

    public MediaType getType() {
        return this.type;
    }
}
