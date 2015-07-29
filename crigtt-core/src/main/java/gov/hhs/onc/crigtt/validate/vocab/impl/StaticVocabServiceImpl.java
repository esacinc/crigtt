package gov.hhs.onc.crigtt.validate.vocab.impl;

import gov.hhs.onc.crigtt.utils.CrigttIteratorUtils;
import gov.hhs.onc.crigtt.validate.ValidatorCode;
import gov.hhs.onc.crigtt.validate.ValidatorCodeSystem;
import gov.hhs.onc.crigtt.validate.ValidatorValueSet;
import gov.hhs.onc.crigtt.validate.impl.ValidatorCodeImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorCodeSystemImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorValueSetImpl;
import gov.hhs.onc.crigtt.validate.vocab.StaticVocabService;
import gov.hhs.onc.crigtt.validate.vocab.StaticVocabXmlNames;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Stream;
import net.sf.saxon.dom.ElementOverNodeInfo;
import net.sf.saxon.s9api.XdmItem;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.sxpath.IndependentContext;
import org.apache.commons.collections4.keyvalue.MultiKey;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class StaticVocabServiceImpl extends AbstractVocabService implements StaticVocabService {
    private final static String SYS_NODE_XPATH_EXPR = "/" + StaticVocabXmlNames.SYSTEMS_ELEM_NAME + "/" + StaticVocabXmlNames.SYSTEM_ELEM_NAME;
    private final static String SYS_ATTRS_XPATH_EXPR = "(@" + StaticVocabXmlNames.VALUE_SET_OID_ATTR_NAME + ", @"
        + StaticVocabXmlNames.VALUE_SET_NAME_ATTR_NAME + ")";
    private final static String CODE_ATTRS_XPATH_EXPR = "(@" + StaticVocabXmlNames.CODE_SYSTEM_ATTR_NAME + ", @"
        + StaticVocabXmlNames.CODE_SYSTEM_NAME_ATTR_NAME + ", @" + StaticVocabXmlNames.VALUE_ATTR_NAME + ", @" + StaticVocabXmlNames.DISPLAY_NAME_ATTR_NAME
        + ")";

    private final static String TEST_EXPR_PATTERN_FORMAT = "^([^$]+)@(\\w+)\\s*=\\s*document\\('\\Q%1$s\\E'\\)/([^:]+:)"
        + StaticVocabXmlNames.SYSTEMS_ELEM_NAME + "/\\3" + StaticVocabXmlNames.SYSTEM_ELEM_NAME + "\\[@" + StaticVocabXmlNames.VALUE_SET_OID_ATTR_NAME
        + "\\s*=\\s*'([^']+)'\\]/\\3" + StaticVocabXmlNames.CODE_NODE_NAME + "/@(" + StaticVocabXmlNames.VALUE_ATTR_NAME + "|"
        + StaticVocabXmlNames.DISPLAY_NAME_ATTR_NAME + ")([^$]*)$";

    private final static String TEST_EXPR_REPLACE_FORMAT = "%1$s" + StaticVocabFunction.NAME.toString() + "('%2$s', '%3$s', '%4$s', @*:"
        + StaticVocabXmlNames.VALUE_SET_ATTR_NAME + "[namespace-uri() eq '" + CrigttXmlNs.HL7_SDTC_URI + "'], @" + StaticVocabXmlNames.CODE_SYSTEM_ATTR_NAME
        + ", @" + StaticVocabXmlNames.CODE_SYSTEM_NAME_ATTR_NAME + ", @%5$s, @%6$s)%7$s";

    private final static Logger LOGGER = LoggerFactory.getLogger(StaticVocabServiceImpl.class);

    private XdmDocument doc;
    private Pattern testExprPattern;
    private Map<String, String> initTestExprs;
    private Map<String, ValidatorValueSet> activeValueSets;
    private Map<MultiKey<String>, ValidatorCodeSystem> activeCodeSystems;
    private Map<MultiKey<String>, ValidatorCode> activeCodes;
    private Map<String, Set<MultiKey<String>>> valueSetCodeSystems;
    private Map<MultiKey<String>, Set<MultiKey<String>>> codeSystemCodes;

    @Override
    public String processTestExpression(String patternId, String assertionId, String testExpr) {
        Matcher testExprMatcher = this.testExprPattern.matcher(testExpr);

        if (!testExprMatcher.matches()) {
            return testExpr;
        }

        this.initTestExprs.put(assertionId, testExpr);

        String testCodeAttrName = testExprMatcher.group(5);
        boolean testsCodeId = testCodeAttrName.equals(StaticVocabXmlNames.VALUE_ATTR_NAME);

        return String.format(TEST_EXPR_REPLACE_FORMAT, testExprMatcher.group(1), patternId, assertionId, testExprMatcher.group(4), (testsCodeId
            ? testExprMatcher.group(2) : StaticVocabXmlNames.CODE_NODE_NAME),
            (testsCodeId ? StaticVocabXmlNames.DISPLAY_NAME_ATTR_NAME : testExprMatcher.group(2)), testExprMatcher.group(6));
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        this.testExprPattern = Pattern.compile(String.format(TEST_EXPR_PATTERN_FORMAT, this.doc.getUri().toString()));

        this.initTestExprs = new HashMap<>();

        IndependentContext xpathContext = new IndependentContext(this.xpathCompiler.getUnderlyingStaticContext());

        Stream.of(((ElementOverNodeInfo) this.doc.getDocument().getDocumentElement()).getUnderlyingNodeInfo().getDeclaredNamespaces(null)).forEach(
            ns -> xpathContext.declareNamespace(ns.getPrefix(), ns.getURI()));

        xpathContext.declareNamespace(StringUtils.EMPTY, CrigttXmlNs.VALIDATE_VOCAB_STATIC_URI);

        this.activeValueSets = new LinkedHashMap<>();
        this.activeCodeSystems = new LinkedHashMap<>();
        this.activeCodes = new LinkedHashMap<>();
        this.valueSetCodeSystems = new LinkedHashMap<>();
        this.codeSystemCodes = new LinkedHashMap<>();

        String[] sysAttrs, codeAttrs;
        Set<MultiKey<String>> valueSetCodeSystemItems;
        MultiKey<String> codeSystemKey, codeKey;

        for (XdmNode sysNode : this.xpathCompiler.evaluateNodes(SYS_NODE_XPATH_EXPR, xpathContext, this.doc)) {
            this.activeValueSets.put((sysAttrs =
                CrigttIteratorUtils.stream(this.xpathCompiler.evaluate(SYS_ATTRS_XPATH_EXPR, xpathContext, sysNode).iterator()).map(XdmItem::getStringValue)
                    .toArray(String[]::new))[0], new ValidatorValueSetImpl(sysAttrs[0], sysAttrs[1]));

            this.valueSetCodeSystems.put(sysAttrs[0], (valueSetCodeSystemItems = new LinkedHashSet<>()));

            for (XdmNode codeNode : this.xpathCompiler.evaluateNodes(StaticVocabXmlNames.CODE_NODE_NAME, xpathContext, sysNode)) {
                this.activeCodeSystems.put(
                    (codeSystemKey =
                        new MultiKey<>(sysAttrs[0], (codeAttrs =
                            CrigttIteratorUtils.stream(this.xpathCompiler.evaluate(CODE_ATTRS_XPATH_EXPR, xpathContext, codeNode).iterator())
                                .map(XdmItem::getStringValue).toArray(String[]::new))[0])), new ValidatorCodeSystemImpl(codeAttrs[0], codeAttrs[1]));

                valueSetCodeSystemItems.add(codeSystemKey);

                if (!this.codeSystemCodes.containsKey(codeSystemKey)) {
                    this.codeSystemCodes.put(codeSystemKey, new LinkedHashSet<>());
                }

                this.activeCodes.put((codeKey = new MultiKey<>(sysAttrs[0], codeAttrs[0], codeAttrs[2])), new ValidatorCodeImpl(codeAttrs[2], codeAttrs[3]));

                this.codeSystemCodes.get(codeSystemKey).add(codeKey);
            }
        }

        LOGGER.info(String.format("Loaded static vocabulary components (numValueSets=%d, numCodeSystems=%d, numCodes=%d) from document (uri=%s).",
            this.activeValueSets.size(), this.activeCodeSystems.size(), this.activeCodes.size(), this.doc.getUri().toString()));
    }

    @Override
    public Map<MultiKey<String>, ValidatorCode> getActiveCodes() {
        return this.activeCodes;
    }

    @Override
    public Map<MultiKey<String>, ValidatorCodeSystem> getActiveCodeSystems() {
        return this.activeCodeSystems;
    }

    @Override
    public Map<String, ValidatorValueSet> getActiveValueSets() {
        return this.activeValueSets;
    }

    @Override
    public Map<MultiKey<String>, Set<MultiKey<String>>> getCodeSystemCodes() {
        return this.codeSystemCodes;
    }

    @Override
    public XdmDocument getDocument() {
        return this.doc;
    }

    @Override
    public void setDocument(XdmDocument doc) {
        this.doc = doc;
    }

    @Override
    public Map<String, String> getInitialTestExpressions() {
        return this.initTestExprs;
    }

    @Override
    public Map<String, Set<MultiKey<String>>> getValueSetCodeSystems() {
        return this.valueSetCodeSystems;
    }
}
