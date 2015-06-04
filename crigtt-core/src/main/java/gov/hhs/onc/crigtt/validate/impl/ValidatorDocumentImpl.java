package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.ValidatorDocument;

public class ValidatorDocumentImpl implements ValidatorDocument {
    private String content;
    private String fileName;
    private String hash;

    @Override
    public String getContent() {
        return this.content;
    }

    @Override
    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String getFileName() {
        return this.fileName;
    }

    @Override
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    @Override
    public String getHash() {
        return this.hash;
    }

    @Override
    public void setHash(String hash) {
        this.hash = hash;
    }
}
