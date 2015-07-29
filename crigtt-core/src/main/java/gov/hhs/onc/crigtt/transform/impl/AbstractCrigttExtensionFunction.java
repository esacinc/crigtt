package gov.hhs.onc.crigtt.transform.impl;

import java.util.Map;
import javax.annotation.Nullable;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.lib.ExtensionFunctionCall;
import net.sf.saxon.lib.ExtensionFunctionDefinition;
import net.sf.saxon.om.Sequence;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.SaxonApiUncheckedException;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.trans.XPathException;
import net.sf.saxon.value.SequenceExtent;
import net.sf.saxon.value.SequenceType;

public abstract class AbstractCrigttExtensionFunction extends ExtensionFunctionDefinition {
    protected class CrigttExtensionFunctionCall extends ExtensionFunctionCall {
        @Override
        public Sequence call(XPathContext context, Sequence[] args) throws XPathException {
            XdmValue[] wrappedArgs = new XdmValue[args.length];

            for (int a = 0; a < args.length; a++) {
                wrappedArgs[a] = XdmValue.wrap(SequenceExtent.makeSequenceExtent(args[a].iterate()));
            }

            try {
                return AbstractCrigttExtensionFunction.this.call(context, ((CrigttController) context.getController()).getContextData(), wrappedArgs)
                    .getUnderlyingValue();
            } catch (Exception e) {
                throw new SaxonApiUncheckedException(e);
            }
        }
    }

    protected StructuredQName name;
    protected SequenceType resultType;
    protected SequenceType[] argTypes;

    protected AbstractCrigttExtensionFunction(StructuredQName name, SequenceType resultType, SequenceType ... argTypes) {
        this.name = name;
        this.resultType = resultType;
        this.argTypes = argTypes;
    }

    protected abstract XdmValue call(XPathContext context, Map<Object, Object> contextData, XdmValue[] args) throws Exception;

    @Override
    public ExtensionFunctionCall makeCallExpression() {
        return new CrigttExtensionFunctionCall();
    }

    @Override
    public SequenceType getResultType(SequenceType[] suppliedArgTypes) {
        return this.resultType;
    }

    @Nullable
    protected static String getStringValue(XdmValue rootValue) {
        return getStringValue(rootValue, 0);
    }

    @Nullable
    protected static String getStringValue(XdmValue rootValue, int valueIndex) {
        XdmAtomicValue value = getAtomicValue(rootValue, valueIndex);

        return ((value != null) ? value.getStringValue() : null);
    }

    @Nullable
    protected static XdmAtomicValue getAtomicValue(XdmValue rootValue) {
        return getAtomicValue(rootValue, 0);
    }

    @Nullable
    protected static XdmAtomicValue getAtomicValue(XdmValue rootValue, int valueIndex) {
        return getValue(rootValue, valueIndex, XdmAtomicValue.class);
    }

    @Nullable
    protected static <T extends XdmValue> T getValue(XdmValue rootValue, Class<T> valueClass) {
        return getValue(rootValue, 0, valueClass);
    }

    @Nullable
    protected static <T extends XdmValue> T getValue(XdmValue rootValue, int valueIndex, Class<T> valueClass) {
        return (hasValues(rootValue, (valueIndex + 1)) ? valueClass.cast(rootValue.itemAt(valueIndex)) : null);
    }

    protected static boolean hasValue(XdmValue rootValue) {
        return hasValues(rootValue, 1);
    }

    protected static boolean hasValues(XdmValue rootValue, int numValues) {
        return (rootValue.size() >= numValues);
    }

    @Override
    public SequenceType[] getArgumentTypes() {
        return this.argTypes;
    }

    @Override
    public StructuredQName getFunctionQName() {
        return this.name;
    }
}
