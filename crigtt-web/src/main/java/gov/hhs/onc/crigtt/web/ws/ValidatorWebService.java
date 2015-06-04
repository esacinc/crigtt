package gov.hhs.onc.crigtt.web.ws;

import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.xml.transform.stream.StreamSource;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;
import org.springframework.http.MediaType;

@Path("/validator")
public interface ValidatorWebService {
    @Consumes({ MediaType.MULTIPART_FORM_DATA_VALUE })
    @Path("/validate")
    @POST
    @Produces({ MediaType.APPLICATION_JSON_VALUE })
    public ValidatorResponse validate(@Multipart(value = "documentFile", type = MediaType.TEXT_XML_VALUE) StreamSource docSrc) throws Exception;
}
