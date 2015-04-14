package gov.hhs.onc.crigtt.api.schematron;

import javax.annotation.Nullable;

public enum SchematronLevel {
    INFO(null), WARN("warnings"), ERROR("errors");

    private final String phaseId;

    private SchematronLevel(@Nullable String phaseId) {
        this.phaseId = phaseId;
    }

    @Nullable
    public String getPhaseId() {
        return this.phaseId;
    }
}
