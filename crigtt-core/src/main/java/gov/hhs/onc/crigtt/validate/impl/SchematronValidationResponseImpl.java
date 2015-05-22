package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.schematron.svrl.Output;
import gov.hhs.onc.crigtt.validate.CrigttSchematron;
import gov.hhs.onc.crigtt.validate.ValidationEvent;
import gov.hhs.onc.crigtt.validate.SchematronValidationResponse;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.List;
import javax.annotation.Nullable;

public class SchematronValidationResponseImpl extends AbstractCrigttValidationResponse implements SchematronValidationResponse {
    private CrigttSchematron schematron;
    private XdmDocument doc;
    private List<ValidationEvent> events;
    private Output out;

    public SchematronValidationResponseImpl(CrigttSchematron schematron) {
        this.schematron = schematron;
    }

    @Override
    public boolean hasDocument() {
        return (this.doc != null);
    }

    @Nullable
    @Override
    public XdmDocument getDocument() {
        return this.doc;
    }

    @Override
    public void setDocument(@Nullable XdmDocument doc) {
        this.doc = doc;
    }

    @Override
    public boolean hasEvents() {
        return (this.events != null);
    }

    @Nullable
    @Override
    public List<ValidationEvent> getEvents() {
        return this.events;
    }

    @Override
    public void setEvents(@Nullable List<ValidationEvent> events) {
        this.events = events;
    }

    @Override
    public boolean hasOutput() {
        return (this.out != null);
    }

    @Nullable
    @Override
    public Output getOutput() {
        return this.out;
    }

    @Override
    public void setOutput(@Nullable Output out) {
        this.out = out;
    }

    @Override
    public CrigttSchematron getSchematron() {
        return this.schematron;
    }
}
