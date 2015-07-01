package gov.hhs.onc.crigtt.validate.impl;

import com.fasterxml.jackson.annotation.JsonProperty;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.io.impl.FileContentResource;
import gov.hhs.onc.crigtt.validate.ValidatorCode;
import gov.hhs.onc.crigtt.validate.ValidatorCodeSystem;
import gov.hhs.onc.crigtt.validate.ValidatorDynamicVocabTask;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorLevel;
import gov.hhs.onc.crigtt.validate.ValidatorLocation;
import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.annotation.Nonnegative;
import javax.annotation.Resource;
import net.sf.saxon.dom.NodeOverNodeInfo;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XdmValue;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.RequestEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

public class ValidatorDynamicVocabTaskImpl extends AbstractValidatorTask implements ValidatorDynamicVocabTask {
    private static class ValidatorDynamicVocabEvent {
        private String code;
        private String codeSystem;
        private String codeSystemName;
        private String displayName;
        private String msg;
        private int nodeIndex;
        private String xpathExpr;

        @JsonProperty(required = true)
        public String getCode() {
            return this.code;
        }

        public void setCode(String code) {
            this.code = code;
        }

        @JsonProperty(required = true)
        public String getCodeSystem() {
            return this.codeSystem;
        }

        public void setCodeSystem(String codeSystem) {
            this.codeSystem = codeSystem;
        }

        @JsonProperty(required = true)
        public String getCodeSystemName() {
            return this.codeSystemName;
        }

        public void setCodeSystemName(String codeSystemName) {
            this.codeSystemName = codeSystemName;
        }

        @JsonProperty(required = true)
        public String getDisplayName() {
            return this.displayName;
        }

        public void setDisplayName(String displayName) {
            this.displayName = displayName;
        }

        @JsonProperty(required = true)
        public String getMessage() {
            return this.msg;
        }

        public void setMessage(String msg) {
            this.msg = msg;
        }

        @JsonProperty(required = true)
        @Nonnegative
        public int getNodeIndex() {
            return this.nodeIndex;
        }

        public void setNodeIndex(@Nonnegative int nodeIndex) {
            this.nodeIndex = nodeIndex;
        }

        @JsonProperty(required = true)
        public String getXpathExpression() {
            return this.xpathExpr;
        }

        public void setXpathExpression(String xpathExpr) {
            this.xpathExpr = xpathExpr;
        }
    }

    private static class ValidatorDynamicVocabResult {
        private boolean errors;
        private List<ValidatorDynamicVocabEvent> errorList;
        private boolean info;
        private List<ValidatorDynamicVocabEvent> infoList;
        private boolean warnings;
        private List<ValidatorDynamicVocabEvent> warningList;

        @JsonProperty(required = true)
        public boolean getErrors() {
            return this.errors;
        }

        public void setErrors(boolean errors) {
            this.errors = errors;
        }

        @JsonProperty(required = true)
        public List<ValidatorDynamicVocabEvent> getErrorList() {
            return this.errorList;
        }

        public void setErrorList(List<ValidatorDynamicVocabEvent> errorList) {
            this.errorList = errorList;
        }

        @JsonProperty(required = true)
        public boolean getInformation() {
            return this.info;
        }

        public void setInformation(boolean info) {
            this.info = info;
        }

        @JsonProperty(required = true)
        public List<ValidatorDynamicVocabEvent> getInformationList() {
            return this.infoList;
        }

        public void setInformationList(List<ValidatorDynamicVocabEvent> infoList) {
            this.infoList = infoList;
        }

        @JsonProperty(required = true)
        public boolean getWarnings() {
            return this.warnings;
        }

        public void setWarnings(boolean warnings) {
            this.warnings = warnings;
        }

        @JsonProperty(required = true)
        public List<ValidatorDynamicVocabEvent> getWarningList() {
            return this.warningList;
        }

        public void setWarningList(List<ValidatorDynamicVocabEvent> warningList) {
            this.warningList = warningList;
        }
    }

    @Resource(name = "restTemplateValidatorDynamicVocabService")
    private RestTemplate serviceRestTemplate;

    private MediaType partContentType;
    private String partName;
    private HttpHeaders reqHeaders;
    private URI serviceUri;

    public ValidatorDynamicVocabTaskImpl(XdmDocument doc, ByteArraySource docSrc, String docFileName, Map<String, String> docNamespaces) {
        super(doc, docSrc, docFileName, docNamespaces);
    }

    @Override
    public List<ValidatorEvent> call() throws Exception {
        MultiValueMap<String, Object> reqParts = new LinkedMultiValueMap<>();
        reqParts.add(this.partName, new FileContentResource(this.docSrc.getBytes(), this.docFileName));

        ValidatorDynamicVocabResult dynamicVocabResult =
            this.serviceRestTemplate.exchange(new RequestEntity<>(reqParts, this.reqHeaders, HttpMethod.POST, this.serviceUri),
                ValidatorDynamicVocabResult.class).getBody();

        List<ValidatorEvent> events = new ArrayList<>();

        this.processEvents(events, ValidatorLevel.ERROR, dynamicVocabResult.getErrorList());
        this.processEvents(events, ValidatorLevel.WARN, dynamicVocabResult.getWarningList());
        this.processEvents(events, ValidatorLevel.INFO, dynamicVocabResult.getInformationList());

        return events;
    }

    private void processEvents(List<ValidatorEvent> events, ValidatorLevel level, List<ValidatorDynamicVocabEvent> dynamicVocabEvents) throws Exception {
        for (ValidatorDynamicVocabEvent dynamicVocabEvent : dynamicVocabEvents) {
            events.add(this.processEvent(level, dynamicVocabEvent));
        }
    }

    private ValidatorEvent processEvent(ValidatorLevel level, ValidatorDynamicVocabEvent dynamicVocabEvent) throws Exception {
        ValidatorEvent event = new ValidatorEventImpl();
        event.setDescription(dynamicVocabEvent.getMessage());
        event.setLevel(level);
        event.setStatus((level == ValidatorLevel.INFO));

        ValidatorCodeSystem codeSystem = new ValidatorCodeSystemImpl();
        codeSystem.setId(dynamicVocabEvent.getCodeSystem());
        codeSystem.setName(dynamicVocabEvent.getCodeSystemName());
        event.setCodeSystem(codeSystem);

        ValidatorCode code = new ValidatorCodeImpl();
        code.setId(dynamicVocabEvent.getCode());
        code.setName(dynamicVocabEvent.getDisplayName());
        event.setCode(code);

        int xpathNodeIndex = dynamicVocabEvent.getNodeIndex();
        String xpathExpr = dynamicVocabEvent.getXpathExpression();
        event.setTestExpression(xpathExpr);

        XdmValue locValue = this.xpathCompiler.evaluate(xpathExpr, this.xpathContext, this.doc);

        if ((locValue != null) && (locValue.size() > xpathNodeIndex)) {
            NodeInfo locNodeInfo = ((XdmNode) locValue.itemAt(xpathNodeIndex)).getUnderlyingNode();
            CrigttLocation locObj = new CrigttLocation(locNodeInfo);

            ValidatorLocation loc = new ValidatorLocationImpl();
            loc.setColumnNumber(locObj.getColumnNumber());
            loc.setLineNumber(locObj.getLineNumber());
            loc.setNodeExpression(CrigttXpathUtils.buildAbsoluteExpression(NodeOverNodeInfo.wrap(locNodeInfo)));
            event.setLocation(loc);
        }

        return event;
    }

    @Override
    public MediaType getPartContentType() {
        return this.partContentType;
    }

    @Override
    public void setPartContentType(MediaType partContentType) {
        this.partContentType = partContentType;
    }

    @Override
    public String getPartName() {
        return this.partName;
    }

    @Override
    public void setPartName(String partName) {
        this.partName = partName;
    }

    @Override
    public HttpHeaders getRequestHeaders() {
        return this.reqHeaders;
    }

    @Override
    public void setRequestHeaders(HttpHeaders reqHeaders) {
        this.reqHeaders = reqHeaders;
    }

    @Override
    public URI getServiceUri() {
        return this.serviceUri;
    }

    @Override
    public void setServiceUri(URI serviceUri) {
        this.serviceUri = serviceUri;
    }
}
