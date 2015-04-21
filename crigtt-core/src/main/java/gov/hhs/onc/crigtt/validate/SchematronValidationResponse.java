package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.api.schematron.svrl.Output;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.List;
import javax.annotation.Nullable;

public interface SchematronValidationResponse extends CrigttValidationResponse {
    public boolean hasDocument();

    @Nullable
    public XdmDocument getDocument();

    public void setDocument(@Nullable XdmDocument doc);

    public boolean hasEvents();

    @Nullable
    public List<SchematronValidationEvent> getEvents();

    public void setEvents(@Nullable List<SchematronValidationEvent> events);

    public boolean hasOutput();

    @Nullable
    public Output getOutput();

    public void setOutput(@Nullable Output out);

    public CrigttSchematron getSchematron();
}
