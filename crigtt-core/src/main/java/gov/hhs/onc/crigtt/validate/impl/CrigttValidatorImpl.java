package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedAssert;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import gov.hhs.onc.crigtt.api.schematron.svrl.FailedAssert;
import gov.hhs.onc.crigtt.api.schematron.svrl.SchematronOutput;
import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.validate.CrigttSchematron;
import gov.hhs.onc.crigtt.validate.CrigttValidator;
import gov.hhs.onc.crigtt.validate.SchematronAssertResult;
import gov.hhs.onc.crigtt.validate.SchematronPatternResult;
import gov.hhs.onc.crigtt.validate.SchematronRuleResult;
import gov.hhs.onc.crigtt.validate.SchematronValidatorResult;
import gov.hhs.onc.crigtt.validate.ValidatorResult;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.annotation.Resource;
import javax.xml.transform.Source;
import net.sf.saxon.dom.DocumentOverNodeInfo;
import net.sf.saxon.dom.ElementOverNodeInfo;
import net.sf.saxon.dom.NodeOverNodeInfo;
import net.sf.saxon.expr.parser.ExpressionLocation;
import net.sf.saxon.lib.NamespaceConstant;
import net.sf.saxon.om.NamespaceBinding;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.s9api.DocumentBuilder;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.sxpath.IndependentContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.util.concurrent.ListenableFutureCallback;
import org.springframework.util.concurrent.ListenableFutureTask;

public class CrigttValidatorImpl implements CrigttValidator {
    private class SchematronValidatorCallback implements ListenableFutureCallback<SchematronValidatorResult> {
        private Consumer<SchematronValidatorResult> schematronResultCommitter;
        private CountDownLatch schematronResultLatch;

        public SchematronValidatorCallback(Consumer<SchematronValidatorResult> schematronResultCommitter, CountDownLatch schematronResultLatch) {
            this.schematronResultCommitter = schematronResultCommitter;
            this.schematronResultLatch = schematronResultLatch;
        }

        @Override
        public void onFailure(Throwable exception) {
            // TODO: Handle internal errors/failures.
            LOGGER.error("Unable to validate Schematron.", exception);

            this.schematronResultLatch.countDown();
        }

        @Override
        public void onSuccess(SchematronValidatorResult schematronResult) {
            this.schematronResultCommitter.accept(schematronResult);

            this.schematronResultLatch.countDown();
        }
    }

    private class SchematronValidatorCallable implements Callable<SchematronValidatorResult> {
        private Source docSrc;
        private XdmNode docNode;
        private IndependentContext schematronXpathContext;
        private CrigttSchematron schematron;

        public SchematronValidatorCallable(Source docSrc, XdmNode docNode, IndependentContext schematronXpathContext, CrigttSchematron schematron) {
            this.docSrc = docSrc;
            this.docNode = docNode;
            this.schematronXpathContext = schematronXpathContext;
            this.schematron = schematron;
        }

        @Override
        public SchematronValidatorResult call() throws Exception {
            SchematronValidatorResult schematronResult = new SchematronValidatorResultImpl();

            XdmDocument schematronResultDoc = new XdmDocument(this.schematron.transform(this.docSrc), this.docSrc.getSystemId());
            schematronResult.setDocument(schematronResultDoc);

            SchematronOutput schematronResultOut =
                CrigttValidatorImpl.this.schematronSvrlJaxbMarshaller.unmarshal(schematronResultDoc.getSource(), SchematronOutput.class);
            schematronResult.setOutput(schematronResultOut);

            schematronResultOut.getNsPrefixInAttributeValues().stream()
                .forEach(ns -> this.schematronXpathContext.declareNamespace(ns.getPrefix(), ns.getUri()));

            this.schematronXpathContext.declareNamespace(NamespaceConstant.NULL, "urn:hl7-org:v3");

            Map<String, FailedAssert> failedAsserts =
                schematronResultOut
                    .getFailedAssert()
                    .stream()
                    .collect(
                        Collectors.toMap(FailedAssert::getId, Function.<FailedAssert> identity(), (failedAssert1, failedAssert2) -> failedAssert2,
                            LinkedHashMap::new));

            Map<String, ResolvedPattern> resolvedPatterns = this.schematron.getResolvedPatterns();

            Map<String, SchematronPatternResult> schematronPatternResults = new LinkedHashMap<>(resolvedPatterns.size());
            schematronResult.setPatternResults(schematronPatternResults);

            ResolvedPattern resolvedPattern;
            SchematronPatternResult schematronPatternResult;
            Map<String, ResolvedRule> resolvedRules;
            Map<String, SchematronRuleResult> schematronRuleResults;
            ResolvedRule resolvedRule;
            SchematronRuleResult schematronRuleResult;
            Map<String, ResolvedAssert> resolvedAsserts;
            Map<String, SchematronAssertResult> schematronAssertResults;
            SchematronAssertResult schematronAssertResult;
            FailedAssert failedAssert;
            XdmNode schematronAssertLocNode;
            NodeInfo schematronAssertLocNodeInfo;

            for (String patternId : resolvedPatterns.keySet()) {
                schematronPatternResults.put(patternId,
                    (schematronPatternResult = new SchematronPatternResultImpl((resolvedPattern = resolvedPatterns.get(patternId)))));
                schematronPatternResult.setRuleResults((schematronRuleResults = new LinkedHashMap<>((resolvedRules = resolvedPattern.getRules()).size())));

                for (String ruleId : resolvedRules.keySet()) {
                    schematronRuleResults.put(ruleId, (schematronRuleResult = new SchematronRuleResultImpl((resolvedRule = resolvedRules.get(ruleId)))));
                    schematronRuleResult
                        .setAssertResults((schematronAssertResults = new LinkedHashMap<>((resolvedAsserts = resolvedRule.getAsserts()).size())));

                    for (String assertId : resolvedAsserts.keySet()) {
                        schematronAssertResults.put(assertId, (schematronAssertResult = new SchematronAssertResultImpl(resolvedAsserts.get(assertId))));

                        if (((failedAssert = failedAsserts.get(assertId)) == null)
                            || ((schematronAssertLocNode =
                                CrigttValidatorImpl.this.xpathCompiler.evaluateNode(failedAssert.getLocation(), this.schematronXpathContext, this.docNode)) == null)) {
                            continue;
                        }

                        schematronAssertResult.setLocation(new ExpressionLocation((schematronAssertLocNodeInfo = schematronAssertLocNode.getUnderlyingNode())
                            .getSystemId(), schematronAssertLocNodeInfo.getLineNumber(), schematronAssertLocNodeInfo.getColumnNumber()));
                    }
                }
            }

            return schematronResult;
        }
    }

    private final static Logger LOGGER = LoggerFactory.getLogger(CrigttValidatorImpl.class);

    @Resource(name = "docBuilderCrigtt")
    private DocumentBuilder docBuilder;

    @Resource(name = "xpathCompilerBase")
    private CrigttXpathCompiler xpathCompiler;

    @Resource(name = "jaxbMarshallerSchematronSvrl")
    private CrigttJaxbMarshaller schematronSvrlJaxbMarshaller;

    @Resource(name = "taskExecutorValidateSchematron")
    private ThreadPoolTaskExecutor schematronTaskExecutor;

    private CrigttSchematron[] schematrons;

    @Override
    public ValidatorResult validate(Source docSrc) throws Exception {
        ValidatorResult docResult = new ValidatorResultImpl();
        XdmNode docNode = this.docBuilder.build(docSrc);

        IndependentContext xpathContext = this.xpathCompiler.getUnderlyingStaticContext(), schematronXpathContext;
        NodeInfo docElemInfo =
            ((ElementOverNodeInfo) ((DocumentOverNodeInfo) NodeOverNodeInfo.wrap(docNode.getUnderlyingNode())).getDocumentElement()).getUnderlyingNodeInfo();
        String docElemPrefix = docElemInfo.getPrefix(), docElemNsUri = docElemInfo.getURI();
        NamespaceBinding[] docElemNsBindings = docElemInfo.getDeclaredNamespaces(null);

        Map<CrigttSchematron, SchematronValidatorResult> schematronResults = new ConcurrentHashMap<>(this.schematrons.length);
        docResult.setSchematronResults(schematronResults);

        CountDownLatch schematronResultLatch = new CountDownLatch(this.schematrons.length);
        ListenableFutureTask<SchematronValidatorResult> schematronValidatorTask;

        for (CrigttSchematron schematron : this.schematrons) {
            (schematronXpathContext = new IndependentContext(xpathContext)).declareNamespace(docElemPrefix, docElemNsUri);

            for (NamespaceBinding docElemNsBinding : docElemNsBindings) {
                schematronXpathContext.declareNamespace(docElemNsBinding.getPrefix(), docElemNsBinding.getURI());
            }

            (schematronValidatorTask = new ListenableFutureTask<>(new SchematronValidatorCallable(docSrc, docNode, schematronXpathContext, schematron)))
                .addCallback(new SchematronValidatorCallback(schematronResult -> schematronResults.put(schematron, schematronResult), schematronResultLatch));

            this.schematronTaskExecutor.submit(schematronValidatorTask);
        }

        schematronResultLatch.await();

        return docResult;
    }

    @Override
    public CrigttSchematron[] getSchematrons() {
        return this.schematrons;
    }

    @Override
    public void setSchematrons(CrigttSchematron ... schematrons) {
        this.schematrons = schematrons;
    }
}
