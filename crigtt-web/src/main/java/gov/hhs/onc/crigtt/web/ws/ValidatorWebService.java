package gov.hhs.onc.crigtt.web.ws;

import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import org.springframework.http.MediaType;

@Path("/validator")
public interface ValidatorWebService {
    @Consumes({ MediaType.MULTIPART_FORM_DATA_VALUE })
    @Path("/validate")
    @POST
    @Produces({ MediaType.APPLICATION_JSON_VALUE, MediaType.TEXT_XML_VALUE })
    public ValidatorResponse validate() throws Exception;
}
