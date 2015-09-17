package gov.hhs.onc.crigtt.validate.vocab.model.impl;

import org.sitenv.vocabularies.model.ValueSetCodeModel;
import org.sitenv.vocabularies.model.ValueSetModelDefinition;

public class CrigttValueSetCodeModel extends ValueSetCodeModel {
    public final static String TYPE = "CRIGTT";
    public final static String NAME = CrigttValueSetCodeModel.class.getSimpleName();

    public final static ValueSetModelDefinition<CrigttValueSetCodeModel> DEF = new ValueSetModelDefinition<>(CrigttValueSetCodeModel.class, TYPE);
}
