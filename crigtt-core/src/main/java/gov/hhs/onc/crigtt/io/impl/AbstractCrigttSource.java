package gov.hhs.onc.crigtt.io.impl;

import java.io.InputStream;
import javax.annotation.Nullable;
import javax.xml.transform.stream.StreamSource;

public abstract class AbstractCrigttSource extends StreamSource {
    protected AbstractCrigttSource() {
        super();
    }

    protected AbstractCrigttSource(@Nullable InputStream inStream) {
        super(inStream);
    }

    protected AbstractCrigttSource(@Nullable String sysId) {
        super(sysId);
    }

    protected AbstractCrigttSource(@Nullable InputStream inStream, @Nullable String sysId) {
        super(inStream, sysId);
    }

    @Nullable
    @Override
    public String getPublicId() {
        return super.getPublicId();
    }

    @Override
    public void setPublicId(@Nullable String publicId) {
        super.setPublicId(publicId);
    }

    @Nullable
    @Override
    public String getSystemId() {
        return super.getSystemId();
    }

    @Override
    public void setSystemId(@Nullable String sysId) {
        super.setSystemId(sysId);
    }
}
