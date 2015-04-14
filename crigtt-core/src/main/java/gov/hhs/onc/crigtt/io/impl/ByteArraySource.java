package gov.hhs.onc.crigtt.io.impl;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import javax.annotation.Nullable;

public class ByteArraySource extends AbstractCrigttSource {
    private byte[] bytes;

    public ByteArraySource(byte[] bytes) {
        this(bytes, null);
    }

    public ByteArraySource(byte[] bytes, @Nullable String sysId) {
        super(sysId);

        this.bytes = bytes;
    }

    public byte[] getBytes() {
        return this.bytes;
    }

    @Override
    public InputStream getInputStream() {
        return new ByteArrayInputStream(this.bytes);
    }
}
