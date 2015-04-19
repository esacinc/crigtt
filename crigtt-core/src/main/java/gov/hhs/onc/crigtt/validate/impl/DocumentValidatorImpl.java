package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.DocumentValidationRequest;
import gov.hhs.onc.crigtt.validate.DocumentValidationResponse;
import gov.hhs.onc.crigtt.validate.DocumentValidator;
import gov.hhs.onc.crigtt.validate.SchematronValidationRequest;
import gov.hhs.onc.crigtt.validate.SchematronValidationResponse;
import gov.hhs.onc.crigtt.validate.SchematronValidator;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;
import net.sf.saxon.dom.ElementOverNodeInfo;
import net.sf.saxon.om.NamespaceBinding;
import net.sf.saxon.om.NodeInfo;

public class DocumentValidatorImpl extends AbstractCrigttValidator<DocumentValidationRequest, DocumentValidationResponse> implements DocumentValidator {
    private SchematronValidator[] schematronValidators;

    @Override
    public DocumentValidationResponse validate(DocumentValidationRequest req) {
        DocumentValidationResponse resp = new DocumentValidationResponseImpl();
        XdmDocument reqDoc = req.getDocument();
        NodeInfo reqDocElemInfo = ((ElementOverNodeInfo) reqDoc.getDocument().getDocumentElement()).getUnderlyingNodeInfo();
        NamespaceBinding[] reqDocElemNsBindings = reqDocElemInfo.getDeclaredNamespaces(null);

        Map<String, String> schematronReqNamespaces = new HashMap<>(reqDocElemNsBindings.length + 1);
        schematronReqNamespaces.put(reqDocElemInfo.getPrefix(), reqDocElemInfo.getURI());

        Stream.of(reqDocElemNsBindings).forEach(
            reqDocElemNsBinding -> schematronReqNamespaces.put(reqDocElemNsBinding.getPrefix(), reqDocElemNsBinding.getURI()));

        List<SchematronValidationRequest> schematronReqs = new ArrayList<>(this.schematronValidators.length);
        req.setSchematronRequests(schematronReqs);

        List<SchematronValidationResponse> schematronResps = new ArrayList<>(this.schematronValidators.length);
        resp.setSchematronResponses(schematronResps);

        boolean respSuccess = true;
        SchematronValidationRequest schematronReq;
        SchematronValidationResponse schematronResp;

        for (SchematronValidator schematronValidator : this.schematronValidators) {
            schematronReqs.add((schematronReq = new SchematronValidationRequestImpl()));
            schematronReq.setDocument(reqDoc);
            schematronReq.setNamespaces(schematronReqNamespaces);

            schematronResps.add((schematronResp = schematronValidator.validate(schematronReq)));

            respSuccess &= schematronResp.isSuccess();
        }

        resp.setSuccess(respSuccess);

        return resp;
    }

    @Override
    public SchematronValidator[] getSchematronValidators() {
        return this.schematronValidators;
    }

    @Override
    public void setSchematronValidators(SchematronValidator ... schematronValidators) {
        this.schematronValidators = schematronValidators;
    }
}
