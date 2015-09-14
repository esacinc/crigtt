package gov.hhs.onc.crigtt.validate.vocab.impl;

import com.orientechnologies.orient.core.entity.OEntityManager;
import com.orientechnologies.orient.object.db.OObjectDatabaseTx;
import com.orientechnologies.orient.server.OServer;
import com.orientechnologies.orient.server.config.OServerStorageConfiguration;
import gov.hhs.onc.crigtt.data.db.CrigttDbPaths;
import gov.hhs.onc.crigtt.data.db.impl.CrigttDbServerConfiguration;
import gov.hhs.onc.crigtt.data.db.utils.CrigttSqlUtils;
import gov.hhs.onc.crigtt.data.impl.MapKey;
import gov.hhs.onc.crigtt.data.impl.MapKey.MapKeyEntry;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.validate.SchematronVars;
import gov.hhs.onc.crigtt.validate.vocab.Code;
import gov.hhs.onc.crigtt.validate.vocab.DynamicVocabService;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertion;
import gov.hhs.onc.crigtt.validate.vocab.VocabAttributes;
import gov.hhs.onc.crigtt.validate.vocab.VocabFields;
import gov.hhs.onc.crigtt.validate.vocab.VocabSet;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import javax.annotation.Nullable;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.sitenv.vocabularies.constants.VocabularyConstants;
import org.sitenv.vocabularies.engine.ValidationEngine;
import org.sitenv.vocabularies.model.CodeModel;
import org.sitenv.vocabularies.model.CodeModelDefinition;
import org.sitenv.vocabularies.model.ValueSetCodeModel;
import org.sitenv.vocabularies.model.ValueSetModelDefinition;
import org.sitenv.vocabularies.repository.VocabularyRepository;
import org.sitenv.vocabularies.repository.VocabularyRepositoryConnectionInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

public class DynamicVocabServiceImpl extends AbstractVocabService implements DynamicVocabService {
    private final static String TEST_EXPR_SUFFIX_FORMAT = DynamicVocabFunction.NAME.toString() + CrigttXpathUtils.CALL_PREFIX + CrigttXpathUtils.VAR_PREFIX
        + SchematronVars.PATTERN_ID_NAME + ", '%1$s', %2$s" + CrigttXpathUtils.CALL_SUFFIX;

    private final static List<String> VOCAB_SET_PROJECTIONS = Arrays.asList(VocabFields.VALUE_SET_ID_NAME, VocabFields.VALUE_SET_NAME_NAME,
        VocabFields.VALUE_SET_VERSION_NAME, CrigttSqlUtils.buildFunctionCall(CrigttSqlUtils.DISTINCT_FUNC_NAME), VocabFields.CODE_SYSTEM_NAME_NAME,
        VocabFields.CODE_SYSTEM_VERSION_NAME);

    private final static Logger LOGGER = LoggerFactory.getLogger(DynamicVocabServiceImpl.class);

    @Value("${crigtt.validate.vocab.dynamic.load.force}")
    private boolean forceLoad;

    @Value("${crigtt.db.validate.vocab.dynamic.storage.primary.dir}")
    private File dbPrimaryStorageDir;

    @Value("classpath*:${crigtt.validate.vocab.dynamic.engine.config.file.path}")
    private ResourceSource engineConfigFile;

    @Value("${crigtt.validate.vocab.dynamic.repo.code.dir}")
    private File codeRepoDir;

    @Value("${crigtt.validate.vocab.dynamic.repo.value.set.dir}")
    private File valueSetRepoDir;

    @javax.annotation.Resource(name = "dbServerConfigValidateVocabDynamic")
    private CrigttDbServerConfiguration dbServerConfig;

    private OServer dbServer;
    private VocabularyRepository vocabRepo;

    @Override
    public String processTestExpression(String assertionId, String testExpr) {
        if (!this.assertions.containsKey(assertionId)) {
            return testExpr;
        }

        this.initialTestExprs.put(assertionId, testExpr);

        VocabAssertion assertion = this.assertions.get(assertionId);
        String runtimeTestExpr =
            (CrigttXpathUtils.CALL_PREFIX + testExpr + CrigttXpathUtils.CALL_SUFFIX + StringUtils.SPACE
                + (assertion.getOptional() ? CrigttXpathUtils.OR_OP : CrigttXpathUtils.AND_OP) + StringUtils.SPACE + String.format(TEST_EXPR_SUFFIX_FORMAT,
                assertionId, assertion.getVocabContextExpression()));

        LOGGER.trace(String.format("Processed dynamic vocabulary validation assertion (id=%s, initialTestExpr=%s, runtimeTestExpr=%s).", assertionId, testExpr,
            runtimeTestExpr));

        return runtimeTestExpr;
    }

    @Override
    public List<Code> findCodes(@Nullable String groupingValueSetId, @Nullable String valueSetId, @Nullable String codeSystemId, String codeId) {
        List<Code> codes = super.findCodes(groupingValueSetId, valueSetId, codeSystemId, codeId);

        if (!codes.isEmpty()) {
            return codes;
        }

        List<CodeModel> codeModels;

        try (OObjectDatabaseTx dbConn = this.vocabRepo.getActiveDbConnection()) {
            Map<String, String> params = new LinkedHashMap<>(3);

            params.put(VocabFields.CODE_NAME, codeId);

            // noinspection StringEquality
            if ((codeSystemId != null) && (codeSystemId != CrigttSqlUtils.WILDCARD_VALUE)) {
                params.put(VocabFields.CODE_SYSTEM_ID_NAME, codeSystemId);
            }

            if (valueSetId != null) {
                // noinspection StringEquality
                if (valueSetId != CrigttSqlUtils.WILDCARD_VALUE) {
                    params.put(VocabFields.VALUE_SET_ID_NAME, valueSetId);
                }

                codeModels = dbConn.command(CrigttSqlUtils.buildSelectQuery(ValueSetCodeModel.class, null, null, params, null)).execute(params);
            } else {
                params.put(VocabFields.VALUE_SET_ID_NAME, null);

                codeModels = dbConn.command(CrigttSqlUtils.buildSelectQuery(CodeModel.class, null, null, params, null)).execute(params);
            }

            if (CollectionUtils.isEmpty(codeModels)) {
                return codes;
            }

            MapKey codeKey =
                new MapKey(new MapKeyEntry(VocabAttributes.GROUPING_VALUE_SET_ID_NAME, groupingValueSetId, true), new MapKeyEntry(
                    VocabAttributes.VALUE_SET_ID_NAME, valueSetId, true), new MapKeyEntry(VocabAttributes.CODE_SYSTEM_ID_NAME, codeSystemId, true));
            Code code;

            for (CodeModel codeModel : codeModels) {
                codes.add((code = new CodeImpl((codeModel = dbConn.detach(codeModel, true)).getCode(), codeModel.getDisplayName())));

                this.codeCache.put(codeKey, code);
            }
        }

        return codes;
    }

    @Nullable
    @Override
    public VocabSet findVocabSet(@Nullable String groupingValueSetId, @Nullable String valueSetId, @Nullable String codeSystemId) {
        VocabSet vocabSet = super.findVocabSet(groupingValueSetId, valueSetId, codeSystemId);

        if (vocabSet != null) {
            return vocabSet;
        }

        List<? extends CodeModel> codeModels;

        try (OObjectDatabaseTx dbConn = this.vocabRepo.getActiveDbConnection()) {
            Map<String, String> params = new HashMap<>(2);

            // noinspection StringEquality
            if ((codeSystemId != null) && (codeSystemId != CrigttSqlUtils.WILDCARD_VALUE)) {
                params.put(VocabFields.CODE_SYSTEM_ID_NAME, codeSystemId);
            }

            if (valueSetId != null) {
                // noinspection StringEquality
                if (valueSetId != CrigttSqlUtils.WILDCARD_VALUE) {
                    params.put(VocabFields.VALUE_SET_ID_NAME, valueSetId);
                }

                codeModels =
                    dbConn
                        .command(CrigttSqlUtils.buildSelectQuery(ValueSetCodeModel.class, null, VOCAB_SET_PROJECTIONS, params, VocabFields.VALUE_SET_ID_NAME))
                        .execute(params);
            } else {
                params.put(VocabFields.VALUE_SET_ID_NAME, null);

                codeModels =
                    dbConn.command(
                        CrigttSqlUtils.buildSelectQuery(ValueSetCodeModel.class, CodeModel.class.getSimpleName(), VOCAB_SET_PROJECTIONS, params, null))
                        .execute(params);
            }
        }

        if (CollectionUtils.isEmpty(codeModels)) {
            return null;
        }

        CodeModel codeModel = codeModels.get(0);
        ValueSetCodeModel valueSetCodeModel;

        this.vocabSetCache.put(new MapKey(new MapKeyEntry(VocabAttributes.GROUPING_VALUE_SET_ID_NAME, groupingValueSetId, true), new MapKeyEntry(
            VocabAttributes.VALUE_SET_ID_NAME, valueSetId, true), new MapKeyEntry(VocabAttributes.CODE_SYSTEM_ID_NAME, codeSystemId, true)), (vocabSet =
            new VocabSetImpl(((groupingValueSetId != null) ? new ValueSetImpl(groupingValueSetId, null, null) : null),
                ((codeModel instanceof ValueSetCodeModel) ? new ValueSetImpl((valueSetCodeModel = ((ValueSetCodeModel) codeModel)).getValueSetId(),
                    valueSetCodeModel.getValueSetName(), valueSetCodeModel.getValueSetVersion()) : null), new CodeSystemImpl(codeModel.getCodeSystemId(),
                    codeModel.getCodeSystemName(), codeModel.getCodeSystemVersion()))));

        return vocabSet;
    }

    @Override
    public void destroy() throws Exception {
        Optional.ofNullable(this.dbServer).ifPresent(OServer::shutdown);
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        boolean dbPrimaryStorageExists = (this.dbPrimaryStorageDir.isDirectory() && (this.dbPrimaryStorageDir.list().length > 0));

        (this.dbServer = new OServer()).startup(this.dbServerConfig);
        this.dbServer.activate();

        (this.vocabRepo = VocabularyRepository.getInstance()).setOrientDbServer(this.dbServer);
        this.vocabRepo.setPrimaryNodeCredentials(this.buildRepositoryConnectionInfo(this.dbServerConfig.storages[0]));
        this.vocabRepo.setSecondaryNodeCredentials(this.buildRepositoryConnectionInfo(this.dbServerConfig.storages[1]));

        this.vocabRepo.getValueSetModelDefinitions().put(CrigttValueSetCodeModel.TYPE,
            new ValueSetModelDefinition<>(CrigttValueSetCodeModel.class, CrigttValueSetCodeModel.TYPE));

        this.vocabRepo.getCodeLoaders().put(VocabularyConstants.RXNORM_CODE_SYSTEM_TYPE, new CrigttRxNormLoader());

        this.vocabRepo.initializeDbConnectionPools();

        if (!dbPrimaryStorageExists || this.forceLoad) {
            String codeRepoDirPath = this.codeRepoDir.getPath(), valueSetRepoPath = this.valueSetRepoDir.getPath();

            LOGGER.info(String.format(
                "Loading (force=%s) contents of dynamic vocabulary repositories (codeRepoPath=%s, valueSetRepoPath=%s) into primary database (path=%s).",
                this.forceLoad, codeRepoDirPath, valueSetRepoPath, this.dbPrimaryStorageDir.getPath()));

            this.vocabRepo.toggleActiveDatabase();

            this.vocabRepo.initializeDb(false);

            try (OObjectDatabaseTx dbConn = this.vocabRepo.getInactiveDbConnection()) {
                VocabularyRepository.truncateModel(dbConn, CrigttValueSetCodeModel.class);

                this.vocabRepo.initializeModel(dbConn, CrigttValueSetCodeModel.class);
            }

            if (this.codeRepoDir.isDirectory()) {
                ValidationEngine.loadCodeDirectory(codeRepoDirPath);
            }

            if (this.valueSetRepoDir.isDirectory()) {
                ValidationEngine.loadValueSetDirectory(valueSetRepoPath);
            }

            this.vocabRepo.toggleActiveDatabase();
        } else {
            try (OObjectDatabaseTx dbConn = this.vocabRepo.getActiveDbConnection()) {
                OEntityManager entityManager = dbConn.getEntityManager();

                this.vocabRepo.getCodeModelDefinitions().values().stream().map(CodeModelDefinition::getModelClass).forEach(entityManager::registerEntityClass);
                this.vocabRepo.getValueSetModelDefinitions().values().stream().map(ValueSetModelDefinition::getModelClass)
                    .forEach(entityManager::registerEntityClass);
            }
        }

        super.afterPropertiesSet();
    }

    private VocabularyRepositoryConnectionInfo buildRepositoryConnectionInfo(OServerStorageConfiguration dbStorage) {
        VocabularyRepositoryConnectionInfo repoConnInfo = new VocabularyRepositoryConnectionInfo();
        repoConnInfo.setConnectionInfo((CrigttDbPaths.REMOTE_PROTOCOL_PREFIX + this.dbServerConfig.getIpAddress() + CrigttDbPaths.SERVER_DELIM
            + this.dbServerConfig.getPort() + CrigttDbPaths.DELIM + dbStorage.name));
        repoConnInfo.setPassword(dbStorage.userPassword);
        repoConnInfo.setUsername(dbStorage.userName);

        return repoConnInfo;
    }
}
