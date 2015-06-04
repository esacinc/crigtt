package gov.hhs.onc.crigtt.validate.impl;

import br.net.woodstock.rockframework.security.digest.Digester;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import gov.hhs.onc.crigtt.beans.CrigttIdentifiedBean;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.schematron.Assertion;
import gov.hhs.onc.crigtt.schematron.Pattern;
import gov.hhs.onc.crigtt.schematron.Rule;
import gov.hhs.onc.crigtt.schematron.dto.PhaseDto;
import gov.hhs.onc.crigtt.schematron.dto.SchemaDto;
import gov.hhs.onc.crigtt.schematron.svrl.AttributeValueNamespace;
import gov.hhs.onc.crigtt.schematron.svrl.FailedAssertion;
import gov.hhs.onc.crigtt.schematron.svrl.Output;
import gov.hhs.onc.crigtt.schematron.svrl.SuccessfulReport;
import gov.hhs.onc.crigtt.transform.impl.CrigttDocumentBuilder;
import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorEventLevel;
import gov.hhs.onc.crigtt.validate.ValidatorRequest;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.ValidatorSchematron;
import gov.hhs.onc.crigtt.validate.ValidatorService;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.function.Function;
import java.util.stream.Stream;
import javax.annotation.Resource;
import javax.xml.transform.Source;
import net.sf.saxon.dom.ElementOverNodeInfo;
import net.sf.saxon.event.CommentStripper;
import net.sf.saxon.event.ProxyReceiver;
import net.sf.saxon.event.Receiver;
import net.sf.saxon.lib.AugmentedSource;
import net.sf.saxon.om.NamespaceBinding;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.om.NodeName;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.sxpath.IndependentContext;
import net.sf.saxon.trans.XPathException;
import net.sf.saxon.type.SimpleType;
import org.apache.commons.collections4.IteratorUtils;
import org.bouncycastle.util.encoders.Hex;
import org.joda.time.Instant;

public class ValidatorServiceImpl implements ValidatorService {
    private static class DocumentAttributeStripper extends ProxyReceiver {
        private final static String DOC_ATTR_LOCAL_NAME = "document";

        public DocumentAttributeStripper(Receiver next) {
            super(next);
        }

        @Override
        public void attribute(NodeName name, SimpleType type, CharSequence value, int locId, int props) throws XPathException {
            if (!name.getLocalPart().equals(DOC_ATTR_LOCAL_NAME)) {
                super.attribute(name, type, value, locId, props);
            }
        }
    }

    @Resource(name = "charsetUtf8")
    private Charset enc;

    @Resource(name = "objMapperCrigtt")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private ObjectMapper objMapper;

    @Resource(name = "docBuilderBase")
    protected CrigttDocumentBuilder docBuilder;

    @Resource(name = "xpathCompilerBase")
    private CrigttXpathCompiler xpathCompiler;

    @Resource(name = "jaxbMarshallerSchematronSvrl")
    private CrigttJaxbMarshaller schematronSvrlJaxbMarshaller;

    private Digester digester;
    private Map<String, ValidatorEventLevel> phaseLevels;
    private ValidatorSchematron[] schematrons;
    private TokenBuffer schemasJson;

    @Override
    public ValidatorResponse validate(ValidatorRequest req) throws Exception {
        req.setId(UUID.randomUUID());
        req.setSubmissionTimestamp(Instant.now());

        ValidatorResponse resp = new ValidatorResponseImpl();
        resp.setRequest(req);
        resp.setSchemas(this.schemasJson);

        ValidatorDocument docObj = req.getDocument();
        String docContent = docObj.getContent();
        byte[] docContentBytes = docContent.getBytes(this.enc);
        ByteArraySource docSrc = new ByteArraySource(docContentBytes, docObj.getFileName());
        XdmDocument doc = this.docBuilder.build(docSrc);
        NodeInfo docElemInfo = ((ElementOverNodeInfo) doc.getDocument().getDocumentElement()).getUnderlyingNodeInfo();
        NamespaceBinding[] docElemNsBindings = docElemInfo.getDeclaredNamespaces(null);

        Map<String, String> docNamespaces = new HashMap<>(docElemNsBindings.length + 1);
        docNamespaces.put(docElemInfo.getPrefix(), docElemInfo.getURI());

        Stream.of(docElemNsBindings).forEach(docElemNsBinding -> docNamespaces.put(docElemNsBinding.getPrefix(), docElemNsBinding.getURI()));

        docObj.setHash(Hex.toHexString(this.digester.digest(docContentBytes)));

        boolean status = true;
        List<ValidatorEvent> events = new ArrayList<>();
        Map<String, List<Pattern>> activePatterns;
        Map<String, List<Rule>> activeRules;
        Map<String, List<Assertion>> activeAssertions;
        SchemaDto schema;
        String schemaId;
        Map<String, PhaseDto> phases;
        List<?> outputContent;
        Map<String, FailedAssertion> failedAssertions;
        Map<String, SuccessfulReport> successfulReports;
        ValidatorEventLevel eventLevel;
        ValidatorEvent event;
        String assertionLocExpr = null;
        XdmNode assertionLocNode;

        for (ValidatorSchematron schematron : this.schematrons) {
            activePatterns = schematron.getActivePatterns();
            activeRules = schematron.getActiveRules();
            activeAssertions = schematron.getActiveAssertions();
            schemaId = (schema = schematron.getSchemaDto()).getId();
            phases = schema.getPhases();

            final IndependentContext xpathContext = new IndependentContext(this.xpathCompiler.getUnderlyingStaticContext());

            docNamespaces.forEach(xpathContext::declareNamespace);

            CrigttStreamUtils
                .instances(
                    (outputContent =
                        this.schematronSvrlJaxbMarshaller.unmarshal(schematron.transform(augmentDocumentSource(docSrc)).getSource(), Output.class).getContent())
                        .stream(), AttributeValueNamespace.class).forEach(
                    attrValueNs -> xpathContext.declareNamespace(attrValueNs.getPrefix(), attrValueNs.getUri()));

            failedAssertions =
                CrigttStreamUtils.toMap(CrigttIdentifiedBean::getId, Function.<FailedAssertion> identity(), LinkedHashMap::new,
                    CrigttStreamUtils.instances(outputContent.stream(), FailedAssertion.class));

            successfulReports =
                CrigttStreamUtils.toMap(CrigttIdentifiedBean::getId, Function.<SuccessfulReport> identity(), LinkedHashMap::new,
                    CrigttStreamUtils.instances(outputContent.stream(), SuccessfulReport.class));

            for (String phaseId : phases.keySet()) {
                eventLevel = this.phaseLevels.get(phaseId);

                for (String patternId : IteratorUtils.asIterable(activePatterns.get(phaseId).stream().map(CrigttIdentifiedBean::getId).iterator())) {
                    for (String ruleId : IteratorUtils.asIterable(activeRules.get(patternId).stream().map(CrigttIdentifiedBean::getId).iterator())) {
                        for (String assertionId : IteratorUtils.asIterable(activeAssertions.get(ruleId).stream().map(CrigttIdentifiedBean::getId).iterator())) {
                            (event = new ValidatorEventImpl()).setSchema(schemaId);
                            event.setPhase(phaseId);
                            event.setPattern(patternId);
                            event.setRule(ruleId);
                            event.setAssertion(assertionId);
                            event.setLevel(eventLevel);

                            if (failedAssertions.containsKey(assertionId)) {
                                status = false;

                                assertionLocExpr = failedAssertions.get(assertionId).getLocation();
                            } else if (successfulReports.containsKey(assertionId)) {
                                event.setStatus(true);

                                assertionLocExpr = successfulReports.get(assertionId).getLocation();
                            }

                            if ((assertionLocExpr != null)
                                && ((assertionLocNode = this.xpathCompiler.evaluateNode(assertionLocExpr, xpathContext, doc)) != null)) {
                                event.setLocation(new CrigttLocation(assertionLocNode.getUnderlyingNode()));
                            }

                            events.add(event);
                        }
                    }
                }
            }
        }

        resp.setEvents(events);
        resp.setStatus(status);

        req.setProcessedTimestamp(Instant.now());

        return resp;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        (this.schemasJson = new TokenBuffer(this.objMapper, false)).writeStartObject();

        for (ValidatorSchematron schematron : this.schematrons) {
            this.schemasJson.writeFieldName(schematron.getId());
            this.schemasJson.append(schematron.getSchemaJson());
        }

        this.schemasJson.writeEndObject();
    }

    private static AugmentedSource augmentDocumentSource(Source docSrc) {
        AugmentedSource augmentedDocSrc = AugmentedSource.makeAugmentedSource(docSrc);
        augmentedDocSrc.addFilter(DocumentAttributeStripper::new);
        augmentedDocSrc.addFilter(CommentStripper::new);

        return augmentedDocSrc;
    }

    @Override
    public Digester getDigester() {
        return this.digester;
    }

    @Override
    public void setDigester(Digester digester) {
        this.digester = digester;
    }

    @Override
    public Map<String, ValidatorEventLevel> getPhaseLevels() {
        return this.phaseLevels;
    }

    @Override
    public void setPhaseLevels(Map<String, ValidatorEventLevel> phaseLevels) {
        this.phaseLevels = phaseLevels;
    }

    @Override
    public ValidatorSchematron[] getSchematrons() {
        return this.schematrons;
    }

    @Override
    public void setSchematrons(ValidatorSchematron ... schematrons) {
        this.schematrons = schematrons;
    }
}
