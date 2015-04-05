package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.validate.CrigttValidator;
import java.io.IOException;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import javax.annotation.Nullable;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import net.sf.saxon.dom.NodeOverNodeInfo;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XdmDestination;
import net.sf.saxon.s9api.XsltCompiler;
import net.sf.saxon.s9api.XsltExecutable;
import net.sf.saxon.s9api.XsltTransformer;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.SystemUtils;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.w3c.dom.Document;

public class CrigttValidatorImpl implements CrigttValidator {
    private class CrigttValidatorUriResolver implements URIResolver {
        private String baseResourceUri;

        private CrigttValidatorUriResolver() {
            String[] baseResourceUriParts = StringUtils.split(CrigttValidatorImpl.this.schemaSrc.getSystemId(), SystemUtils.FILE_SEPARATOR);
            baseResourceUriParts[(baseResourceUriParts.length - 1)] = StringUtils.EMPTY;

            this.baseResourceUri = StringUtils.join(baseResourceUriParts, SystemUtils.FILE_SEPARATOR);
        }

        @Nullable
        @Override
        public Source resolve(String sysId, @Nullable String baseUri) throws TransformerException {
            String resourceUri = this.baseResourceUri.concat(sysId);
            Resource resource = CrigttValidatorImpl.this.resourceLoader.getResource(resourceUri);

            try {
                return (resource.exists() ? new ResourceSource(resource) : null);
            } catch (IOException e) {
                throw new TransformerException(String.format("Unable to read resource (sysId=%s, baseUri=%s, resourceUri=%s).", sysId, baseUri, resourceUri), e);
            }
        }
    }

    private ResourceLoader resourceLoader;
    private Source schemaSrc;
    private XsltExecutable[] stylesheets;
    private XsltCompiler xsltCompiler;
    private URIResolver validationUriResolver;
    private XsltExecutable validationStylesheet;

    @Override
    public Document validate(Source src) throws SaxonApiException {
        XsltTransformer validationTransformer = this.validationStylesheet.load();
        validationTransformer.setURIResolver(this.validationUriResolver);
        validationTransformer.setSource(src);

        XdmDestination validationResult = new XdmDestination();
        validationTransformer.setDestination(validationResult);

        validationTransformer.transform();

        return ((Document) NodeOverNodeInfo.wrap(validationResult.getXdmNode().getUnderlyingNode()));
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        this.validationUriResolver = new CrigttValidatorUriResolver();

        XsltTransformer[] transformers = Stream.of(this.stylesheets).map(XsltExecutable::load).toArray(XsltTransformer[]::new);

        IntStream.range(0, (transformers.length - 1)).forEach(
            transformerIndex -> transformers[transformerIndex].setDestination(transformers[(transformerIndex + 1)]));

        transformers[0].setSource(this.schemaSrc);

        XdmDestination validationDest = new XdmDestination();
        transformers[(transformers.length - 1)].setDestination(validationDest);

        transformers[0].transform();

        this.validationStylesheet = this.xsltCompiler.compile(validationDest.getXdmNode().asSource());
    }

    @Override
    public void setResourceLoader(ResourceLoader resourceLoader) {
        this.resourceLoader = resourceLoader;
    }

    @Override
    public Source getSchemaSource() {
        return this.schemaSrc;
    }

    @Override
    public void setSchemaSource(Source schemaSrc) {
        this.schemaSrc = schemaSrc;
    }

    @Override
    public XsltExecutable[] getStylesheets() {
        return this.stylesheets;
    }

    @Override
    public void setStylesheets(XsltExecutable[] stylesheets) {
        this.stylesheets = stylesheets;
    }

    @Override
    public XsltCompiler getXsltCompiler() {
        return this.xsltCompiler;
    }

    @Override
    public void setXsltCompiler(XsltCompiler xsltCompiler) {
        this.xsltCompiler = xsltCompiler;
    }
}
