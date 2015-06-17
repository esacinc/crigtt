package gov.hhs.onc.crigtt.web.jaxrs.impl;

import gov.hhs.onc.crigtt.transform.impl.CrigttSerializer;
import javax.annotation.Nullable;
import javax.annotation.Resource;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import net.sf.saxon.event.CommentStripper;
import net.sf.saxon.lib.AugmentedSource;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.SaxonApiUncheckedException;
import net.sf.saxon.value.Whitespace;
import org.apache.cxf.Bus;
import org.apache.cxf.helpers.DOMUtils;
import org.apache.cxf.jaxrs.model.wadl.WadlGenerator;
import org.apache.cxf.message.Message;
import org.w3c.dom.Document;

public class CrigttWadlGenerator extends WadlGenerator {
    @Resource(name = "serializerXmlDisplay")
    private CrigttSerializer xmlSerializer;

    public CrigttWadlGenerator(Bus bus) {
        super(bus);
    }

    @Nullable
    @Override
    public Response getExistingWadl(Message msg, UriInfo uriInfo, MediaType contentType) {
        Response wadlResp = super.getExistingWadl(msg, uriInfo, contentType);
        Object wadlEntity;

        if ((wadlResp == null) || !((wadlEntity = wadlResp.getEntity()) instanceof DOMSource)) {
            return wadlResp;
        }

        DOMSource wadlSrc = ((DOMSource) wadlEntity);

        AugmentedSource augmentedWadlSrc = AugmentedSource.makeAugmentedSource(wadlSrc);
        augmentedWadlSrc.setStripSpace(Whitespace.ALL);
        augmentedWadlSrc.addFilter(CommentStripper::new);

        Document wadlDoc = DOMUtils.createDocument();

        try {
            this.xmlSerializer.serializeToResult(augmentedWadlSrc, new DOMResult(wadlDoc));
        } catch (SaxonApiException e) {
            throw new SaxonApiUncheckedException(e);
        }

        wadlSrc.setNode(wadlDoc);

        return wadlResp;
    }
}
