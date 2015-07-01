package gov.hhs.onc.crigtt.validate.render.impl;

import gov.hhs.onc.crigtt.io.impl.ByteArrayResult;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.transform.impl.CrigttSerializer;
import gov.hhs.onc.crigtt.transform.impl.CrigttXsltExecutable;
import gov.hhs.onc.crigtt.transform.impl.CrigttXsltTransformer;
import gov.hhs.onc.crigtt.utils.CrigttOptionUtils;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.render.HtmlValidatorRenderer;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderOptions;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import gov.hhs.onc.crigtt.validate.render.XmlValidatorRenderer;
import gov.hhs.onc.crigtt.xml.impl.CrigttXmlOutputFactory;
import java.util.Map;
import javax.annotation.Resource;
import net.sf.saxon.lib.AugmentedSource;
import net.sf.saxon.stax.XMLStreamWriterDestination;
import net.sf.saxon.value.Whitespace;

public class HtmlValidatorRendererImpl extends AbstractValidatorRenderer implements HtmlValidatorRenderer {
    @Resource(name = "xsltExecValidatorResponseHtml")
    private CrigttXsltExecutable xsltExec;

    @Resource(name = "validatorRendererXmlImpl")
    private XmlValidatorRenderer xmlRenderer;

    @Resource(name = "xmlOutFactoryCrigtt")
    private CrigttXmlOutputFactory xmlOutFactory;

    @Resource(name = "serializerHtmlDisplay")
    private CrigttSerializer displaySerializer;

    @Resource(name = "serializerHtml")
    private CrigttSerializer serializer;

    public HtmlValidatorRendererImpl() {
        super(ValidatorRenderType.HTML);
    }

    @Override
    protected byte[] renderInternal(ValidatorResponse resp, Map<String, Object> opts) throws Exception {
        CrigttXsltTransformer xsltTransformer = this.xsltExec.load();
        xsltTransformer.setSource(new ByteArraySource(this.xmlRenderer.render(resp)));

        xsltTransformer
            .getUnderlyingController()
            .getContextData()
            .put(
                ValidatorRenderOptions.TIME_ZONE_CONTEXT_DATA_KEY,
                (opts.containsKey(ValidatorRenderOptions.TIME_ZONE_NAME) ? opts.get(ValidatorRenderOptions.TIME_ZONE_NAME) : this.defaultOpts
                    .get(ValidatorRenderOptions.TIME_ZONE_NAME)));

        ByteArrayResult result = new ByteArrayResult();
        xsltTransformer.setDestination(new XMLStreamWriterDestination(this.xmlOutFactory.createXMLStreamWriter(result)));

        xsltTransformer.transform();

        AugmentedSource augmentedSrc = AugmentedSource.makeAugmentedSource(new ByteArraySource(result.getBytes()));
        augmentedSrc.setStripSpace(Whitespace.ALL);

        return (CrigttOptionUtils.toBoolean(opts.get(ValidatorRenderOptions.FORMAT_NAME), ((Boolean) this.defaultOpts.get(ValidatorRenderOptions.FORMAT_NAME)))
            ? this.displaySerializer : this.serializer).serializeToBytes(augmentedSrc);
    }
}
