package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.api.schematron.svrl.SchematronOutput;
import gov.hhs.onc.crigtt.validate.CrigttSchematron;
import gov.hhs.onc.crigtt.validate.SchematronValidationEvent;
import gov.hhs.onc.crigtt.validate.SchematronValidationResponse;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.List;
import javax.annotation.Nullable;

public class SchematronValidationResponseImpl extends AbstractCrigttValidationResponse implements SchematronValidationResponse {
    private CrigttSchematron schematron;
    private XdmDocument doc;
    private List<SchematronValidationEvent> events;
    private SchematronOutput out;

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
    public List<SchematronValidationEvent> getEvents() {
        return this.events;
    }

    @Override
    public void setEvents(@Nullable List<SchematronValidationEvent> events) {
        this.events = events;
    }

    @Override
    public boolean hasOutput() {
        return (this.out != null);
    }

    @Nullable
    @Override
    public SchematronOutput getOutput() {
        return this.out;
    }

    @Override
    public void setOutput(@Nullable SchematronOutput out) {
        this.out = out;
    }

    @Override
    public CrigttSchematron getSchematron() {
        return this.schematron;
    }
}
