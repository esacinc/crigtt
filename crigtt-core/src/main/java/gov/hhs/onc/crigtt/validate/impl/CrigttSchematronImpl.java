package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.Assert;
import gov.hhs.onc.crigtt.api.schematron.Extends;
import gov.hhs.onc.crigtt.api.schematron.Pattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedAssert;
import gov.hhs.onc.crigtt.api.schematron.ResolvedPattern;
import gov.hhs.onc.crigtt.api.schematron.ResolvedRule;
import gov.hhs.onc.crigtt.api.schematron.Rule;
import gov.hhs.onc.crigtt.api.schematron.Schema;
import gov.hhs.onc.crigtt.api.schematron.SchematronLevel;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedAssertImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedPatternImpl;
import gov.hhs.onc.crigtt.api.schematron.impl.ResolvedRuleImpl;
import gov.hhs.onc.crigtt.io.ResourceUriResolver;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.validate.CrigttSchematron;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import javax.annotation.Resource;
import javax.xml.transform.Source;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XPathCompiler;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmDestination;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XsltCompiler;
import net.sf.saxon.s9api.XsltExecutable;
import net.sf.saxon.s9api.XsltTransformer;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.oxm.jaxb.Jaxb2Marshaller;

public class CrigttSchematronImpl implements CrigttSchematron {
    @Resource(name = "xpathCompilerCrigtt")
    private XPathCompiler xpathCompiler;

    @Resource(name = "xsltCompilerCrigtt")
    private XsltCompiler xsltCompiler;

    @Resource(name = "marshallerSchematron")
    private Jaxb2Marshaller marshaller;

    private BeanFactory beanFactory;
    private String desc;
    private String displayName;
    private String name;
    private Map<String, ?> params;
    private ResourceSource src;
    private String uriResolverBeanName;
    private XsltExecutable[] xsltExecs;
    private ResourceUriResolver uriResolver;
    private XsltExecutable xsltExec;
    private Map<String, ResolvedPattern> resolvedPatterns;

    @Override
    public XdmNode transform(Source docSrc) throws SaxonApiException {
        XsltTransformer docTransformer = this.xsltExec.load();
        docTransformer.setURIResolver(this.uriResolver);
        docTransformer.setSource(docSrc);

        XdmDestination docDest = new XdmDestination();
        docTransformer.setDestination(docDest);

        docTransformer.transform();

        return docDest.getXdmNode();
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        this.uriResolver = ((ResourceUriResolver) this.beanFactory.getBean(this.uriResolverBeanName, ((Object) ArrayUtils.toArray(this.src.getResource()))));

        ByteArraySource contentSrc = new ByteArraySource(IOUtils.toByteArray(this.src.getInputStream()), this.src.getSystemId());
        contentSrc.setPublicId(this.src.getPublicId());

        XsltTransformer[] transformers = Stream.of(this.xsltExecs).map(XsltExecutable::load).toArray(XsltTransformer[]::new);
        transformers[0].setSource(contentSrc);

        IntStream.range(0, (transformers.length - 1)).forEach(
            transformerIndex -> transformers[transformerIndex].setDestination(transformers[(transformerIndex + 1)]));

        XdmDestination schemaDest = new XdmDestination();
        transformers[(transformers.length - 1)].setDestination(schemaDest);

        Optional.ofNullable(this.params).ifPresent(
            params -> params.forEach((paramName, paramValue) -> transformers[2].setParameter(new QName(paramName), (ClassUtils.isAssignable(
                paramValue.getClass(), Boolean.class) ? new XdmAtomicValue(((Boolean) paramValue)) : new XdmAtomicValue(paramValue.toString())))));

        transformers[0].transform();

        this.xsltExec = this.xsltCompiler.compile(schemaDest.getXdmNode().asSource());

        Schema schema = ((Schema) this.marshaller.unmarshal(contentSrc));

        final Map<String, SchematronLevel> phaseLevels =
            EnumSet.allOf(SchematronLevel.class).stream().collect(Collectors.toMap(SchematronLevel::getPhaseId, Function.<SchematronLevel> identity())), activePatterns =
            new LinkedHashMap<>();
        final Map<String, Pattern> patterns = new LinkedHashMap<>();
        final Map<String, Rule> rules = new LinkedHashMap<>();
        final Map<String, Assert> asserts = new LinkedHashMap<>();

        schema.getPhase().forEach(phase -> {
            final SchematronLevel phaseLevel = phaseLevels.get(phase.getId());

            phase.getActive().forEach(active -> activePatterns.put(active.getPattern().toString(), phaseLevel));
        });

        schema.getPattern().forEach(pattern -> {
            patterns.put(pattern.getId(), pattern);

            pattern.getRule().forEach(rule -> {
                rules.put(rule.getId(), rule);

                rule.getAssert().forEach(azzert -> asserts.put(azzert.getId(), azzert));
            });
        });

        this.resolvedPatterns = new LinkedHashMap<>(patterns.size());

        String patternId, ruleId, ruleContext;
        ResolvedPattern resolvedPattern;
        Map<String, ResolvedRule> resolvedRules;
        ResolvedRule resolvedRule;

        for (Pattern pattern : patterns.values()) {
            if ((pattern.isSetAbstract() && pattern.isAbstract()) || !activePatterns.containsKey((patternId = pattern.getId()))) {
                continue;
            }

            resolvedPattern = new ResolvedPatternImpl();
            resolvedPattern.setId(patternId);
            resolvedPattern.setLevel(activePatterns.get(patternId));
            resolvedPattern.setRules((resolvedRules = new LinkedHashMap<>()));

            for (Rule rule : pattern.getRule()) {
                if (rule.isSetAbstract() && rule.isAbstract()) {
                    continue;
                }

                resolvedRule = new ResolvedRuleImpl();
                resolvedRule.setId((ruleId = rule.getId()));

                if (!StringUtils.isBlank((ruleContext = rule.getContext()))) {
                    resolvedRule.setContext(this.xpathCompiler.compilePattern(ruleContext));
                }

                resolvedRule.setAsserts(this.resolveAsserts(rules, new LinkedHashMap<>(), rule));

                resolvedRules.put(ruleId, resolvedRule);
            }
        }
    }

    private Map<String, ResolvedAssert> resolveAsserts(Map<String, Rule> rules, Map<String, ResolvedAssert> resolvedAsserts, Rule rule)
        throws SaxonApiException {
        for (Extends extendz : rule.getExtends()) {
            this.resolveAsserts(rules, resolvedAsserts, rules.get(extendz.getRule().toString()));
        }

        ResolvedAssert resolvedAssert;
        String assertId;

        for (Assert azzert : rule.getAssert()) {
            (resolvedAssert = new ResolvedAssertImpl()).setId((assertId = azzert.getId()));
            resolvedAssert.setTest(this.xpathCompiler.compilePattern(azzert.getTest()));
            resolvedAssert.setText(String.join(StringUtils.EMPTY, azzert.getMixedContent()));
            resolvedAsserts.put(assertId, resolvedAssert);
        }

        return resolvedAsserts;
    }

    @Override
    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
        this.beanFactory = beanFactory;
    }

    @Override
    public String getDescription() {
        return this.desc;
    }

    @Override
    public void setDescription(String desc) {
        this.desc = desc;
    }

    @Override
    public String getDisplayName() {
        return this.displayName;
    }

    @Override
    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public Map<String, ?> getParameters() {
        return this.params;
    }

    @Override
    public void setParameters(Map<String, ?> params) {
        this.params = params;
    }

    @Override
    public Map<String, ResolvedPattern> getResolvedPatterns() {
        return this.resolvedPatterns;
    }

    @Override
    public ResourceSource getSource() {
        return this.src;
    }

    @Override
    public void setSource(ResourceSource src) {
        this.src = src;
    }

    @Override
    public String getUriResolverBeanName() {
        return this.uriResolverBeanName;
    }

    @Override
    public void setUriResolverBeanName(String uriResolverBeanName) {
        this.uriResolverBeanName = uriResolverBeanName;
    }

    @Override
    public XsltExecutable[] getXsltExecutables() {
        return this.xsltExecs;
    }

    @Override
    public void setXsltExecutables(XsltExecutable ... xsltExecs) {
        this.xsltExecs = xsltExecs;
    }
}
