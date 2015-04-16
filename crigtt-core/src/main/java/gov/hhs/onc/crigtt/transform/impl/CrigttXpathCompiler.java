package gov.hhs.onc.crigtt.transform.impl;

import javax.annotation.Nullable;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XPathCompiler;
import net.sf.saxon.s9api.XPathExecutable;
import net.sf.saxon.s9api.XPathSelector;
import net.sf.saxon.s9api.XdmItem;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.sxpath.IndependentContext;
import net.sf.saxon.sxpath.XPathEvaluator;
import net.sf.saxon.sxpath.XPathExpression;
import net.sf.saxon.trans.XPathException;

public class CrigttXpathCompiler extends XPathCompiler {
    private class CrigttXpathExecutable extends XPathExecutable {
        public CrigttXpathExecutable(XPathExpression expr, IndependentContext context) {
            super(expr, CrigttXpathCompiler.this.getProcessor(), context);
        }
    }

    public CrigttXpathCompiler(CrigttProcessor processor) {
        super(processor);
    }

    @Nullable
    public XdmNode evaluateNode(String expr) throws SaxonApiException {
        return this.evaluateNode(expr, ((XdmItem) null));
    }

    @Nullable
    public XdmNode evaluateNode(String expr, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.evaluateNode(expr, this.getUnderlyingStaticContext(), contextItem);
    }

    @Nullable
    public XdmNode evaluateNode(String expr, IndependentContext context) throws SaxonApiException {
        return this.evaluateNode(expr, context, null);
    }

    @Nullable
    public XdmNode evaluateNode(String expr, IndependentContext context, @Nullable XdmItem contextItem) throws SaxonApiException {
        XdmItem item = this.evaluateSingle(expr, context, contextItem);

        return ((item instanceof XdmNode) ? ((XdmNode) item) : null);
    }

    @Nullable
    public XdmItem evaluateSingle(String expr) throws SaxonApiException {
        return this.evaluateSingle(expr, ((XdmItem) null));
    }

    @Nullable
    public XdmItem evaluateSingle(String expr, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.evaluateSingle(expr, this.getUnderlyingStaticContext(), contextItem);
    }

    @Nullable
    public XdmItem evaluateSingle(String expr, IndependentContext context) throws SaxonApiException {
        return this.evaluateSingle(expr, context, null);
    }

    @Nullable
    public XdmItem evaluateSingle(String expr, IndependentContext context, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.select(expr, context, contextItem).evaluateSingle();
    }

    public XdmValue evaluate(String expr) throws SaxonApiException {
        return this.evaluate(expr, ((XdmItem) null));
    }

    public XdmValue evaluate(String expr, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.evaluate(expr, this.getUnderlyingStaticContext(), contextItem);
    }

    public XdmValue evaluate(String expr, IndependentContext context) throws SaxonApiException {
        return this.evaluate(expr, context, null);
    }

    public XdmValue evaluate(String expr, IndependentContext context, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.select(expr, context, contextItem).evaluate();
    }

    public XPathSelector select(String expr) throws SaxonApiException {
        return this.select(expr, ((XdmItem) null));
    }

    public XPathSelector select(String expr, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.select(expr, this.getUnderlyingStaticContext(), contextItem);
    }

    public XPathSelector select(String expr, IndependentContext context) throws SaxonApiException {
        return this.select(expr, context, null);
    }

    public XPathSelector select(String expr, IndependentContext context, @Nullable XdmItem contextItem) throws SaxonApiException {
        XPathSelector xpathSel = this.compile(expr, context).load();

        if (contextItem != null) {
            xpathSel.setContextItem(contextItem);
        }

        return xpathSel;
    }

    @Override
    public XPathExecutable compile(String expr) throws SaxonApiException {
        return this.compile(expr, this.getUnderlyingStaticContext());
    }

    public XPathExecutable compile(String expr, IndependentContext context) throws SaxonApiException {
        XPathEvaluator xpathEval = new XPathEvaluator(this.getProcessor().getUnderlyingConfiguration());
        xpathEval.setStaticContext(context);

        try {
            return new CrigttXpathExecutable(xpathEval.createExpression(expr), context);
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    @Override
    public CrigttProcessor getProcessor() {
        return ((CrigttProcessor) super.getProcessor());
    }

    @Override
    public IndependentContext getUnderlyingStaticContext() {
        return ((IndependentContext) super.getUnderlyingStaticContext());
    }
}
