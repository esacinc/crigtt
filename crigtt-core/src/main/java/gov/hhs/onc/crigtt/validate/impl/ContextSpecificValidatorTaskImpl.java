package gov.hhs.onc.crigtt.validate.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.ContextSpecificValidatorTask;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorLevel;
import gov.hhs.onc.crigtt.validate.ValidatorLocation;
import gov.hhs.onc.crigtt.validate.testcases.ElementSet;
import gov.hhs.onc.crigtt.validate.testcases.ElementSets;
import gov.hhs.onc.crigtt.validate.testcases.ExpectedResults;
import gov.hhs.onc.crigtt.validate.testcases.MatchingCondition;
import gov.hhs.onc.crigtt.validate.testcases.SubExpressionSet;
import gov.hhs.onc.crigtt.validate.testcases.Testcase;
import gov.hhs.onc.crigtt.validate.testcases.XPathSet;
import gov.hhs.onc.crigtt.validate.testcases.utils.TestcaseUtils;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;
import javax.annotation.Nullable;
import javax.annotation.Resource;
import javax.xml.transform.Source;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XdmNode;

public class ContextSpecificValidatorTaskImpl extends AbstractValidatorTask implements ContextSpecificValidatorTask {
    @Resource(name = "jaxbMarshallerValidate")
    private CrigttJaxbMarshaller validateJaxbMarshaller;

    private List<Source> testcaseSources;
    private Map<String, Testcase> testcases;

    private final static String EMPTY_RESULT = "()";

    public ContextSpecificValidatorTaskImpl(XdmDocument doc, ByteArraySource docSrc, String docFileName, Map<String, String> docNamespaces,
        String testcaseId) {
        super(doc, docSrc, docFileName, docNamespaces, testcaseId);
    }

    @Override
    public List<ValidatorEvent> call() throws Exception {
        ValidatorEvent event;

        List<XPathSet> xPathSets = this.testcases.get(this.testcaseId).getXPathSets();
        List<ValidatorEvent> events = new ArrayList<>(xPathSets.size());

        for (XPathSet xPathSet : xPathSets) {
            String baseXPathExpression = xPathSet.getXPathExpression();
            Object xPathSetContent = xPathSet.getContent();

            if (xPathSetContent instanceof ExpectedResults) {
                events.add((event = new ValidatorEventImpl()));
                evaluateResults(event, xPathSet, baseXPathExpression, (ExpectedResults) xPathSetContent);
            } else if (xPathSetContent instanceof ElementSets) {
                evaluateSubexpressionSets(events, baseXPathExpression, (ElementSets) xPathSetContent);
            }
        }

        return events;
    }

    private void evaluateResults(ValidatorEvent event, XPathSet xPathSet, String baseXPathExpression, ExpectedResults xPathSetContent)
        throws SaxonApiException {
        ValidatorLocation loc;
        CrigttLocation locObj;
        boolean assertionStatus = false;

        event.setLocation((loc = new ValidatorLocationImpl()));
        event.setContextSpecific(true);
        event.setLevel(ValidatorLevel.MISMATCH);

        loc.setNodeExpression(baseXPathExpression);

        List<String> expectedResults = xPathSetContent.getExpectedResults();
        List<XdmNode> locNodes = Arrays.asList(this.xpathCompiler.evaluateNodes(xPathSet.getXPathExpression(), this.xpathContext, this.doc));
        MatchingCondition matchingCondition = xPathSet.getMatchingCondition();

        for (XdmNode locNode : locNodes) {
            if (locNode != null) {
                loc.setColumnNumber((locObj = new CrigttLocation(locNode.getUnderlyingNode())).getColumnNumber());
                loc.setLineNumber(locObj.getLineNumber());

                String actualResult = locNode.getStringValue();

                if (xPathSet.getXPathResultComparison()) {
                    List<String> expectedXPathResults = new ArrayList<>(expectedResults.size());

                    for (String expectedResult : expectedResults) {
                        XdmNode resultNode = this.xpathCompiler.evaluateNode(expectedResult, this.xpathContext, this.doc);

                        if (resultNode != null) {
                            expectedXPathResults.add(resultNode.getStringValue());
                        }
                    }

                    assertionStatus = getAssertionStatus(expectedXPathResults, actualResult, matchingCondition);
                    expectedResults.addAll(expectedXPathResults);
                } else {
                    assertionStatus = getAssertionStatus(expectedResults, actualResult, matchingCondition);
                }

                event.setActualResult(actualResult);

                if (assertionStatus) {
                    break;
                }
            } else {
                assertionStatus = expectedResults.isEmpty() || getAssertionStatus(expectedResults, EMPTY_RESULT);
            }
        }

        if (locNodes.size() == 0) {
            assertionStatus = expectedResults.isEmpty() || getAssertionStatus(expectedResults, EMPTY_RESULT);
        }

        event.setExpectedResults(expectedResults);
        event.setStatus(assertionStatus);
    }

    private void evaluateSubexpressionSets(List<ValidatorEvent> events, String baseXPathExpression, ElementSets xPathSetContent)
        throws SaxonApiException {
        boolean assertionStatus = false;
        ValidatorEvent event;
        ValidatorLocation loc;
        XdmNode locNode;

        for (ElementSet elementSet : xPathSetContent.getElementSets()) {
            boolean optional = elementSet.getOptional();
            int nodeIndex = 0;

            for (SubExpressionSet subExpressionSet : elementSet.getSubExpressionSets()) {
                MatchingCondition matchingCondition = subExpressionSet.getMatchingCondition();
                String subExpression = subExpressionSet.getSubExpression();
                List<String> expectedResults = subExpressionSet.getExpectedResults();
                String xPathExpression = getIndexedXPathExpression(nodeIndex, baseXPathExpression, subExpression);

                List<XdmNode> subExprLocNodes = Arrays.asList(this.xpathCompiler.evaluateNodes(xPathExpression, this.xpathContext, this.doc));

                event = new ValidatorEventImpl();
                event.setLocation((loc = new ValidatorLocationImpl()));
                event.setContextSpecific(true);
                event.setLevel(ValidatorLevel.MISMATCH);

                loc.setNodeExpression(xPathExpression);

                int nodeListSize = subExprLocNodes.size();

                for (int a = 0; a < nodeListSize; a++) {
                    if ((locNode = subExprLocNodes.get(a)) != null) {
                        NodeInfo nodeInfo = locNode.getUnderlyingNode();
                        String actualResult = nodeInfo.getStringValue();

                        setLocationInfo(loc, nodeInfo, getIndexedXPathExpression(nodeIndex, baseXPathExpression, subExpression));
                        event.setActualResult(actualResult);

                        if ((assertionStatus = getAssertionStatus(expectedResults, actualResult, matchingCondition))) {
                            setLocationInfo(loc, nodeInfo,
                                getIndexedXPathExpression(nodeIndex == 0 ? (nodeIndex = a + 1) : nodeIndex, baseXPathExpression, subExpression));

                            break;
                        }
                    }
                }

                if (loc.getNodeExpression() == null) {
                    loc.setNodeExpression(xPathExpression);
                }

                if (nodeListSize == 0) {
                    assertionStatus = expectedResults.isEmpty() || getAssertionStatus(expectedResults, EMPTY_RESULT);
                }

                event.setExpectedResults(expectedResults);
                event.setStatus(assertionStatus);

                if (optional) {
                    if (assertionStatus) {
                        events.add(event);

                        break;
                    }
                } else {
                    events.add(event);
                }
            }
        }
    }

    private String getIndexedXPathExpression(int nodeIndex, String baseXPathExpression, String subExpression) {
        return nodeIndex == 0 ? baseXPathExpression + subExpression : baseXPathExpression + "[" + nodeIndex + "]" + subExpression;
    }

    private void setLocationInfo(ValidatorLocation loc, NodeInfo nodeInfo, String xPathExpression) {
        CrigttLocation locObj;

        loc.setColumnNumber((locObj = new CrigttLocation(nodeInfo)).getColumnNumber());
        loc.setLineNumber(locObj.getLineNumber());
        loc.setNodeExpression(xPathExpression);
    }

    private boolean getAssertionStatus(List<String> expectedResults, String actualResult) {
        return getAssertionStatus(expectedResults, actualResult, null);
    }

    private boolean getAssertionStatus(List<String> expectedResults, String actualResult, @Nullable MatchingCondition matchingCondition) {
        Predicate<String> matchingPredicate = actualResult::equals;

        if (matchingCondition != null) {
            int substrMatchLen = matchingCondition.getMatchLength();

            switch (matchingCondition.getMatchingLevel()) {
                case EQUALS:
                    matchingPredicate = actualResult::equals;
                    break;
                case SUBSTRING:
                    matchingPredicate = expectedResult -> (expectedResult.length() < substrMatchLen ? expectedResult.equals(actualResult) :
                        expectedResult.substring(0, substrMatchLen).equals(actualResult));
                    break;
            }
        }

        return expectedResults.stream().anyMatch(matchingPredicate);
    }

    @Override
    public List<Source> getTestcaseSources() {
        return this.testcaseSources;
    }

    @Override
    public void setTestcaseSources(List<Source> testcaseSources) {
        this.testcaseSources = testcaseSources;
    }

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public void afterPropertiesSet() throws Exception {
        super.afterPropertiesSet();

        this.testcases = CrigttStreamUtils.toMap(IdentifiedBean::getId,
            Function.<Testcase>identity(), LinkedHashMap::new, TestcaseUtils.buildTestcases(this.getTestcaseSources(), this.validateJaxbMarshaller).stream());
    }
}
