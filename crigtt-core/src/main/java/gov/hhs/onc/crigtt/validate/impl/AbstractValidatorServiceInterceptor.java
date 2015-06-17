package gov.hhs.onc.crigtt.validate.impl;

import br.net.woodstock.rockframework.security.digest.Digester;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.validate.ValidatorCache;
import gov.hhs.onc.crigtt.validate.ValidatorContentType;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorError;
import gov.hhs.onc.crigtt.validate.ValidatorRequest;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.ValidatorResult;
import gov.hhs.onc.crigtt.validate.ValidatorServiceInterceptor;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Optional;
import java.util.UUID;
import java.util.function.Consumer;
import java.util.function.Supplier;
import java.util.stream.Stream;
import javax.annotation.Nullable;
import javax.annotation.Resource;
import org.apache.commons.lang3.exception.ExceptionUtils;
import org.bouncycastle.util.encoders.Hex;
import org.joda.time.Instant;

public abstract class AbstractValidatorServiceInterceptor implements ValidatorServiceInterceptor {
    @Resource(name = "charsetUtf8")
    protected Charset enc;

    @Resource(name = "validatorCacheImpl")
    protected ValidatorCache cache;

    protected Digester digester;

    @Override
    public ValidatorResponse postProcess(ValidatorRequest req, ValidatorResponse resp) {
        return this.postProcess(req, resp, null);
    }

    @Override
    public ValidatorResponse postProcess(ValidatorRequest req, ValidatorResponse resp, @Nullable Exception exception) {
        ValidatorDocument doc = resp.getDocument();
        ValidatorResult result = resp.getResult();

        if (exception != null) {
            result.setEvents(null);
            result.setSchemas(null);
            result.setStatus(false);

            ValidatorError error = new ValidatorErrorImpl();
            error.setMessage(Optional.ofNullable(ExceptionUtils.getRootCause(exception)).orElse(exception).getMessage());
            error.setStackTrace(Arrays.asList(ExceptionUtils.getRootCauseStackTrace(exception)));
            resp.setError(error);
        } else {
            this.cache.putResult(doc.getHash(), resp.getContentType(), result);
        }

        doc.setContent(null);

        resp.setProcessedTimestamp(Instant.now());

        return resp;
    }

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public ValidatorResponse preProcess(ValidatorRequest req) {
        ValidatorResponse resp = new ValidatorResponseImpl();

        processProperty(req::getSubmittedTimestamp, Instant::now, req::setSubmittedTimestamp, resp::setSubmittedTimestamp);
        processProperty(req::getId, () -> UUID.randomUUID().toString(), req::setId, resp::setId);

        ValidatorContentType contentType = processProperty(req::getContentType, () -> ValidatorContentType.JSON, req::setContentType, resp::setContentType);
        ValidatorDocument doc = processProperty(req::getDocument, ValidatorDocumentImpl::new, req::setDocument, resp::setDocument);
        // noinspection ConstantConditions
        String hash = doc.getHash();

        if (hash == null) {
            // noinspection ConstantConditions
            final String content = doc.getContent();

            if (content != null) {
                hash = processProperty(doc::getHash, () -> Hex.toHexString(this.digester.digest(content.getBytes(this.enc))), doc::setHash);
            }
        }

        resp.setResult((this.cache.containsResult(hash, contentType) ? this.cache.getResult(hash, contentType) : new ValidatorResultImpl()));

        return resp;
    }

    @Nullable
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    protected static <T> T processProperty(Supplier<T> propGetter, @Nullable Supplier<T> propCreator, Consumer<T> ... propSetters) {
        final T propValue = Optional.ofNullable(propGetter.get()).orElse(((propCreator != null) ? propCreator.get() : null));

        if (propValue != null) {
            Stream.of(propSetters).forEach(propSetter -> propSetter.accept(propValue));
        }

        return propValue;
    }

    @Override
    public Digester getDigester() {
        return this.digester;
    }

    @Override
    public void setDigester(Digester digester) {
        this.digester = digester;
    }
}
