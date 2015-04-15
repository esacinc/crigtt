package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.api.schematron.svrl.SchematronOutput;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.transform.impl.CrigttSerializer;
import gov.hhs.onc.crigtt.validate.CrigttSchematron;
import gov.hhs.onc.crigtt.validate.CrigttValidator;
import gov.hhs.onc.crigtt.validate.SchematronValidatorResult;
import gov.hhs.onc.crigtt.validate.ValidatorResult;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.function.Consumer;
import javax.annotation.Resource;
import javax.xml.transform.Source;
import net.sf.saxon.s9api.DocumentBuilder;
import net.sf.saxon.s9api.XPathCompiler;
import net.sf.saxon.s9api.XdmNode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.oxm.jaxb.Jaxb2Marshaller;
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
        private XdmNode docNode;
        private Source docSrc;
        private CrigttSchematron schematron;

        public SchematronValidatorCallable(XdmNode docNode, Source docSrc, CrigttSchematron schematron) {
            this.docNode = docNode;
            this.docSrc = docSrc;
            this.schematron = schematron;
        }

        @Override
        public SchematronValidatorResult call() throws Exception {
            SchematronValidatorResult schematronResult = new SchematronValidatorResultImpl();

            XdmNode schematronResultNode = this.schematron.transform(this.docSrc);
            schematronResult.setNode(schematronResultNode);

            SchematronOutput docResultOutput =
                ((SchematronOutput) CrigttValidatorImpl.this.schematronSvrlMarshaller.unmarshal(new ByteArraySource(CrigttValidatorImpl.this.xmlSerializer
                    .serializeNodeToBytes(schematronResultNode))));
            schematronResult.setOutput(docResultOutput);

            Map<String, ResolvedPattern> patterns = this.schematron.getResolvedPatterns();

            // TODO: Build Schematron result tree.

            return schematronResult;
        }
    }

    private final static Logger LOGGER = LoggerFactory.getLogger(CrigttValidatorImpl.class);

    @Resource(name = "docBuilderCrigtt")
    private DocumentBuilder docBuilder;

    @Resource(name = "xpathCompilerCrigtt")
    private XPathCompiler xpathCompiler;

    @Resource(name = "serializerXml")
    private CrigttSerializer xmlSerializer;

    @Resource(name = "marshallerSchematronSvrl")
    private Jaxb2Marshaller schematronSvrlMarshaller;

    @Resource(name = "taskExecutorValidateSchematron")
    private ThreadPoolTaskExecutor schematronTaskExecutor;

    private CrigttSchematron[] schematrons;

    @Override
    public ValidatorResult validate(Source docSrc) throws Exception {
        ValidatorResult docResult = new ValidatorResultImpl();

        XdmNode docNode = this.docBuilder.build(docSrc);

        docSrc = new ByteArraySource(this.xmlSerializer.serializeNodeToBytes(docNode), docSrc.getSystemId());

        Map<CrigttSchematron, SchematronValidatorResult> schematronResults = new ConcurrentHashMap<>(this.schematrons.length);
        docResult.setSchematronResults(schematronResults);

        CountDownLatch schematronResultLatch = new CountDownLatch(this.schematrons.length);
        ListenableFutureTask<SchematronValidatorResult> schematronValidatorTask;

        for (CrigttSchematron schematron : this.schematrons) {
            (schematronValidatorTask = new ListenableFutureTask<>(new SchematronValidatorCallable(docNode, docSrc, schematron)))
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
