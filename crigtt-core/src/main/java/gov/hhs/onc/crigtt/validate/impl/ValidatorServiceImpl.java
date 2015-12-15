package gov.hhs.onc.crigtt.validate.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.transform.impl.CrigttDocumentBuilder;
import gov.hhs.onc.crigtt.utils.CrigttDateUtils;
import gov.hhs.onc.crigtt.utils.CrigttFunctionUtils;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorEventTotals;
import gov.hhs.onc.crigtt.validate.ValidatorReport;
import gov.hhs.onc.crigtt.validate.ValidatorResults;
import gov.hhs.onc.crigtt.validate.ValidatorService;
import gov.hhs.onc.crigtt.validate.ValidatorSubmission;
import gov.hhs.onc.crigtt.validate.ValidatorTask;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.security.MessageDigest;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.annotation.Nullable;
import javax.annotation.Resource;
import net.sf.saxon.dom.ElementOverNodeInfo;
import net.sf.saxon.om.NamespaceBinding;
import net.sf.saxon.om.NodeInfo;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.ObjectUtils;
import org.joda.time.Instant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.cache.ehcache.EhCacheCache;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.util.concurrent.ListenableFutureCallback;
import org.springframework.util.concurrent.ListenableFutureTask;

public class ValidatorServiceImpl implements ValidatorService {
    private static class ValidatorFutureTask extends ListenableFutureTask<List<ValidatorEvent>> implements ListenableFutureCallback<List<ValidatorEvent>> {
        private CountDownLatch taskLatch;
        private List<ValidatorEvent> events;
        private Exception exception;

        public ValidatorFutureTask(CountDownLatch taskLatch, ValidatorTask task) {
            super(task);

            this.taskLatch = taskLatch;

            this.addCallback(this);
        }

        @Override
        public void onFailure(Throwable exception) {
            this.exception = ((Exception) exception);

            this.taskLatch.countDown();
        }

        @Override
        public void onSuccess(List<ValidatorEvent> events) {
            this.events = events;

            this.taskLatch.countDown();
        }

        @Nullable
        public List<ValidatorEvent> getEvents() {
            return this.events;
        }

        @Nullable
        public Exception getException() {
            return this.exception;
        }
    }

    private final static Logger LOGGER = LoggerFactory.getLogger(ValidatorServiceImpl.class);

    @Resource(name = "docBuilderCrigtt")
    private CrigttDocumentBuilder docBuilder;

    @Resource(name = "cacheValidateResults")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private EhCacheCache cache;

    @Resource(name = "taskExecValidateService")
    private ThreadPoolTaskExecutor taskExecutor;

    private BeanFactory beanFactory;
    private Provider digestProv;
    private String digestAlg;
    private String[] cecTaskBeanNames;
    private String[] hqrTaskBeanNames;
    private String[] pqrsTaskBeanNames;
    private MessageDigest digest;

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public ValidatorReport validate(ValidatorSubmission submission) throws Exception {
        ValidatorReport report = new ValidatorReportImpl();
        // noinspection ConstantConditions
        String formattedSubmittedTimestamp =
            CrigttDateUtils.DISPLAY_FORMAT.format(new Date(CrigttFunctionUtils.consume(() -> Instant.now().getMillis(), submission::setSubmittedTimestamp,
                report::setSubmittedTimestamp))), id = CrigttFunctionUtils.consume(() -> UUID.randomUUID().toString(), submission::setId, report::setId);

        ValidatorDocument docObj = submission.getDocument();
        report.setDocument(docObj);

        String docFileName = docObj.getFileName();
        byte[] docContent = docObj.getContent(), docHash =
            CrigttFunctionUtils.consume(docObj::getHash, () -> ObjectUtils.clone(this.digest).digest(docContent), docObj::setHash);
        String docHashStr = Base64.encodeBase64String(docHash);
        String cacheKey = docHashStr + "-" + submission.getSchematronId(); // Add the schematronId to the cache key
        ValidatorResults results = this.cache.get(cacheKey, ValidatorResults.class);
        ValidatorEventTotals eventTotals;
        long processedTimestamp;

        if (results != null) {
            report.setProcessedTimestamp((processedTimestamp = Instant.now().getMillis()));
            report.setResults(results);

            LOGGER
                .debug(String
                    .format(
                        "Retrieved submission (id=%s, submitted=%s, schematronId=%s) document (fileName=%s, hash=%s) results (processed=%s, numEvents=%d, numInfoEvents=%d, numWarnEvents=%d, numErrorEvents=%d) from cache.",
                        id, formattedSubmittedTimestamp, submission.getSchematronId(), docFileName, docHashStr, CrigttDateUtils.DISPLAY_FORMAT.format(new Date(processedTimestamp)),
                        (eventTotals = results.getEventTotals()).getAll(), eventTotals.getInfo(), eventTotals.getWarn(), eventTotals.getError()));

            return report;
        }

        report.setResults((results = new ValidatorResultsImpl()));

        results.setEventTotals((eventTotals = new ValidatorEventTotalsImpl()));

        List<ValidatorEvent> events = new ArrayList<>();
        results.setEvents(events);

        ByteArraySource docSrc = new ByteArraySource(docContent, docFileName);
        XdmDocument doc = this.docBuilder.build(docSrc);
        NodeInfo docElemInfo = ((ElementOverNodeInfo) doc.getDocument().getDocumentElement()).getUnderlyingNodeInfo();
        NamespaceBinding[] docElemNsBindings = docElemInfo.getDeclaredNamespaces(null);

        Map<String, String> docNamespaces = new HashMap<>(docElemNsBindings.length + 1);
        docNamespaces.put(docElemInfo.getPrefix(), docElemInfo.getURI());

        Stream.of(docElemNsBindings).forEach(docElemNsBinding -> docNamespaces.put(docElemNsBinding.getPrefix(), docElemNsBinding.getURI()));

        Exception taskException;

        List<ValidatorFutureTask> futureTasks;
        switch(submission.getSchematronId()) {
            case "cec":
                futureTasks = getValidatorFutureTasks(cecTaskBeanNames, docFileName, docSrc, doc, docNamespaces);
                break;
            case "hqr":
                futureTasks = getValidatorFutureTasks(hqrTaskBeanNames, docFileName, docSrc, doc, docNamespaces);
                break;
            case "pqrs":
                futureTasks = getValidatorFutureTasks(pqrsTaskBeanNames, docFileName, docSrc, doc, docNamespaces);
                break;
            default:
                taskException = new Exception("Unknown Schematron");
                LOGGER.error("Unknown Schematron.");
                throw taskException;
        }

        for (ValidatorFutureTask futureTask : futureTasks) {
            if ((taskException = futureTask.getException()) != null) {
                LOGGER.error(String.format("Unable to validate submission (id=%s, submitted=%s) document (fileName=%s, hash=%s).", id,
                    formattedSubmittedTimestamp, docFileName, docHashStr), taskException);

                throw taskException;
            }
        }

        int numInfoEvents = 0, numWarnEvents = 0, numErrorEvents = 0;
        boolean status = true;
        int eventId = 0;
        List<ValidatorEvent> taskEvents;

        for (ValidatorFutureTask futureTask : futureTasks) {
            // noinspection ConstantConditions
            events.addAll((taskEvents = futureTask.getEvents()));

            for (ValidatorEvent taskEvent : taskEvents) {
                // noinspection ConstantConditions
                taskEvent.setId(Integer.toString(++eventId));

                if (taskEvent.getStatus()) {
                    continue;
                }

                switch (taskEvent.getLevel()) {
                    case INFO:
                        numInfoEvents++;
                        break;

                    case WARN:
                        numWarnEvents++;
                        break;

                    case ERROR:
                        numErrorEvents++;

                        status = false;
                        break;
                }
            }
        }

        eventTotals.setAll(eventId);
        eventTotals.setInfo(numInfoEvents);
        eventTotals.setWarn(numWarnEvents);
        eventTotals.setError(numErrorEvents);

        results.setStatus(status);

        this.cache.putIfAbsent(cacheKey, results);

        report.setProcessedTimestamp((processedTimestamp = Instant.now().getMillis()));

        LOGGER
            .info(String
                .format(
                    "Submission (id=%s, submitted=%s, schematronId=%s) document (fileName=%s, hash=%s) validated (processed=%s, status=%s, numEvents=%d, numInfoEvents=%d, numWarnEvents=%d, numErrorEvents=%d).",
                    id, formattedSubmittedTimestamp, submission.getSchematronId(), docFileName, docHashStr, CrigttDateUtils.DISPLAY_FORMAT.format(new Date(processedTimestamp)), status,
                    (eventId - 1), numInfoEvents, numWarnEvents, numErrorEvents));

        return report;
    }

    private List<ValidatorFutureTask> getValidatorFutureTasks(String[] taskBeanNames, String docFileName, ByteArraySource docSrc, XdmDocument doc, Map<String, String> docNamespaces) throws InterruptedException {
        CountDownLatch taskLatch = new CountDownLatch(taskBeanNames.length);

        List<ValidatorFutureTask> futureTasks =
                Stream
                        .of(taskBeanNames)
                        .map(
                                taskBeanName -> {
                                    ValidatorFutureTask futureTask =
                                            new ValidatorFutureTask(taskLatch,
                                                    ((ValidatorTask) this.beanFactory.getBean(taskBeanName, doc, docSrc, docFileName, docNamespaces)));

                                    this.taskExecutor.submit(futureTask);

                                    return futureTask;
                                }).collect(Collectors.toList());

        taskLatch.await();
        return futureTasks;
    }


    @Override
    public void afterPropertiesSet() throws Exception {
        this.digest = MessageDigest.getInstance(this.digestAlg, this.digestProv);
    }

    @Override
    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
        this.beanFactory = beanFactory;
    }

    @Override
    public String getDigestAlgorithm() {
        return this.digestAlg;
    }

    @Override
    public void setDigestAlgorithm(String digestAlg) {
        this.digestAlg = digestAlg;
    }

    @Override
    public Provider getDigestProvider() {
        return this.digestProv;
    }

    @Override
    public void setDigestProvider(Provider digestProv) {
        this.digestProv = digestProv;
    }

    @Override
    public String[] getCecTaskBeanNames() {
        return this.cecTaskBeanNames;
    }

    @Override
    public void setCecTaskBeanNames(String ... cecTaskBeanNames) {
        this.cecTaskBeanNames = cecTaskBeanNames;
    }

    @Override
    public String[] getHqrTaskBeanNames() {
        return this.hqrTaskBeanNames;
    }

    @Override
    public void setHqrTaskBeanNames(String ... hqrTaskBeanNames) {
        this.hqrTaskBeanNames = hqrTaskBeanNames;
    }

    @Override
    public String[] getPqrsTaskBeanNames() {
        return this.pqrsTaskBeanNames;
    }

    @Override
    public void setPqrsTaskBeanNames(String ... pqrsTaskBeanNames) {
        this.pqrsTaskBeanNames = pqrsTaskBeanNames;
    }
}
