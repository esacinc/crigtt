package gov.hhs.onc.crigtt.transform.impl;

import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import org.springframework.beans.factory.SmartFactoryBean;
import org.w3c.dom.Node;

public class SchematronTemplatesFactoryBean implements SmartFactoryBean<Templates> {
    private Source[] pipelineRulesSrcs;
    private Source rulesSrc;
    private TransformerFactory transformerFactory;

    @Override
    public Templates getObject() throws Exception {
        Source rulesSrc = this.rulesSrc;
        DOMResult rulesResult;
        Node rulesResultNode = null;

        for (Source pipelineRulesSrc : this.pipelineRulesSrcs) {
            this.transformerFactory.newTransformer(pipelineRulesSrc).transform(rulesSrc, (rulesResult = new DOMResult()));

            rulesSrc = new DOMSource((rulesResultNode = rulesResult.getNode()));
        }

        return this.transformerFactory.newTemplates(new DOMSource(rulesResultNode));
    }

    @Override
    public boolean isEagerInit() {
        return false;
    }

    @Override
    public Class<?> getObjectType() {
        return Templates.class;
    }

    public Source[] getPipelineRulesSources() {
        return this.pipelineRulesSrcs;
    }

    public void setPipelineRulesSources(Source[] pipelineRulesSrcs) {
        this.pipelineRulesSrcs = pipelineRulesSrcs;
    }

    @Override
    public boolean isPrototype() {
        return false;
    }

    public Source getRulesSource() {
        return this.rulesSrc;
    }

    public void setRulesSource(Source rulesSrc) {
        this.rulesSrc = rulesSrc;
    }

    @Override
    public boolean isSingleton() {
        return true;
    }

    public TransformerFactory getTransformerFactory() {
        return this.transformerFactory;
    }

    public void setTransformerFactory(TransformerFactory transformerFactory) {
        this.transformerFactory = transformerFactory;
    }
}
