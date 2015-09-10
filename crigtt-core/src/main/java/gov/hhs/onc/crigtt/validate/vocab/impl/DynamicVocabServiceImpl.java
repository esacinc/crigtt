package gov.hhs.onc.crigtt.validate.vocab.impl;

import com.orientechnologies.orient.core.sql.query.OSQLSynchQuery;
import com.orientechnologies.orient.object.db.OObjectDatabaseTx;
import com.orientechnologies.orient.server.OServer;
import com.orientechnologies.orient.server.config.OServerStorageConfiguration;
import gov.hhs.onc.crigtt.data.db.CrigttDbPaths;
import gov.hhs.onc.crigtt.data.db.impl.CrigttDbServerConfiguration;
import gov.hhs.onc.crigtt.data.impl.MapKey;
import gov.hhs.onc.crigtt.data.impl.MapKey.MapKeyEntry;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.validate.vocab.Code;
import gov.hhs.onc.crigtt.validate.vocab.DynamicVocabService;
import gov.hhs.onc.crigtt.validate.vocab.VocabAttributes;
import gov.hhs.onc.crigtt.validate.vocab.VocabSet;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.io.File;
import java.util.List;
import java.util.Optional;
import javax.annotation.Nullable;
import org.apache.commons.collections4.keyvalue.MultiKey;
import org.objectquery.SelectQuery;
import org.objectquery.generic.GenericSelectQuery;
import org.objectquery.orientdb.OrientDBObjectQuery;
import org.objectquery.orientdb.OrientDBQueryGenerator;
import org.sitenv.vocabularies.engine.ValidationEngine;
import org.sitenv.vocabularies.model.CodeModel;
import org.sitenv.vocabularies.model.ValueSetCodeModel;
import org.sitenv.vocabularies.repository.VocabularyRepository;
import org.sitenv.vocabularies.repository.VocabularyRepositoryConnectionInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

public class DynamicVocabServiceImpl extends AbstractVocabService implements DynamicVocabService {
    private final static String TEST_EXPR_SUFFIX_FORMAT = CrigttXpathUtils.CALL_SUFFIX + " %1$s " + DynamicVocabFunction.NAME.toString()
        + CrigttXpathUtils.CALL_PREFIX + "'%2$s', '%3$s'" + CrigttXpathUtils.CALL_SUFFIX;

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
    public String processTestExpression(String patternId, String assertionId, String testExpr) {
        if (!this.assertions.containsKey(assertionId)) {
            return testExpr;
        }

        this.initialTestExprs.put(assertionId, testExpr);

        String runtimeTestExpr =
            (CrigttXpathUtils.CALL_PREFIX + testExpr + String.format(TEST_EXPR_SUFFIX_FORMAT, (this.assertions.get(assertionId).getOptional()
                ? CrigttXpathUtils.OR_OP : CrigttXpathUtils.AND_OP), patternId, assertionId));

        this.runtimeTestExprs.put(new MultiKey<>(patternId, assertionId), runtimeTestExpr);

        LOGGER.trace(String.format("Processed dynamic vocabulary validation assertion (patternId=%s, id=%s, initialTestExpr=%s, runtimeTestExpr=%s).",
            patternId, assertionId, testExpr, runtimeTestExpr));

        return runtimeTestExpr;
    }

    @Override
    public List<Code> findCodes(@Nullable String groupingValueSetId, @Nullable String valueSetId, String codeSystemId, String codeId) {
        List<Code> codes = super.findCodes(groupingValueSetId, valueSetId, codeSystemId, codeId);

        if (!codes.isEmpty()) {
            return codes;
        }

        OrientDBQueryGenerator queryGen;

        try (OObjectDatabaseTx dbConn = this.vocabRepo.getActiveDbConnection()) {
            if (valueSetId != null) {
                SelectQuery<ValueSetCodeModel> query = new GenericSelectQuery<>(ValueSetCodeModel.class);
                ValueSetCodeModel target = query.target();

                query.eq(target.getValueSetId(), valueSetId);
                query.eq(target.getCodeSystemId(), codeSystemId);
                query.eq(target.getCode(), codeId);

                codes =
                    dbConn.command(new OSQLSynchQuery<>((queryGen = OrientDBObjectQuery.orientdbGenerator(query)).getQuery()))
                        .execute(queryGen.getParameters());
            } else if (codeSystemId != null) {
                SelectQuery<CodeModel> query = new GenericSelectQuery<>(CodeModel.class);
                CodeModel target = query.target();

                query.eq(target.getCodeSystemId(), codeSystemId);
                query.eq(target.getCode(), codeId);

                codes =
                    dbConn.command(new OSQLSynchQuery<>((queryGen = OrientDBObjectQuery.orientdbGenerator(query)).getQuery()))
                        .execute(queryGen.getParameters());
            }
        }

        if (!codes.isEmpty()) {
            MapKey codeKey =
                new MapKey(new MapKeyEntry(VocabAttributes.GROUPING_VALUE_SET_ID_NAME, groupingValueSetId, true), new MapKeyEntry(
                    VocabAttributes.VALUE_SET_ID_NAME, valueSetId, true), new MapKeyEntry(VocabAttributes.CODE_SYSTEM_ID_NAME, codeSystemId, true));

            codes.stream().forEach(code -> this.codeCache.put(codeKey, code));
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

        OrientDBQueryGenerator queryGen;
        List<VocabSet> vocabSets = null;

        try (OObjectDatabaseTx dbConn = this.vocabRepo.getActiveDbConnection()) {
            if (valueSetId != null) {
                SelectQuery<ValueSetCodeModel> query = new GenericSelectQuery<>(ValueSetCodeModel.class);
                ValueSetCodeModel target = query.target();

                query.eq(target.getValueSetId(), valueSetId);

                if (codeSystemId != null) {
                    query.eq(target.getCodeSystemId(), codeSystemId);
                }

                vocabSets =
                    dbConn.command(new OSQLSynchQuery<>((queryGen = OrientDBObjectQuery.orientdbGenerator(query)).getQuery()))
                        .execute(queryGen.getParameters());
            } else if (codeSystemId != null) {
                SelectQuery<CodeModel> query = new GenericSelectQuery<>(CodeModel.class);
                query.eq(query.target().getCodeSystemId(), codeSystemId);

                vocabSets =
                    dbConn.command(new OSQLSynchQuery<>((queryGen = OrientDBObjectQuery.orientdbGenerator(query)).getQuery()))
                        .execute(queryGen.getParameters());
            } else {
                return null;
            }
        }

        if (vocabSets.isEmpty()) {
            return null;
        }

        this.vocabSetCache.put(new MapKey(new MapKeyEntry(VocabAttributes.GROUPING_VALUE_SET_ID_NAME, groupingValueSetId, true), new MapKeyEntry(
            VocabAttributes.VALUE_SET_ID_NAME, valueSetId, true), new MapKeyEntry(VocabAttributes.CODE_SYSTEM_ID_NAME, codeSystemId, true)), (vocabSet =
            vocabSets.get(0)));

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
        vocabRepo.setPrimaryNodeCredentials(this.buildRepositoryConnectionInfo(this.dbServerConfig.storages[0]));
        vocabRepo.setSecondaryNodeCredentials(this.buildRepositoryConnectionInfo(this.dbServerConfig.storages[1]));

        vocabRepo.initializeDbs();

        if (!dbPrimaryStorageExists || this.forceLoad) {
            String codeRepoDirPath = this.codeRepoDir.getPath(), valueSetRepoPath = this.valueSetRepoDir.getPath();

            LOGGER.info(String.format(
                "Loading (force=%s) contents of dynamic vocabulary repositories (codeRepoPath=%s, valueSetRepoPath=%s) into primary database (path=%s).",
                this.forceLoad, codeRepoDirPath, valueSetRepoPath, this.dbPrimaryStorageDir.getPath()));

            vocabRepo.toggleActiveDatabase();

            if (this.codeRepoDir.isDirectory()) {
                ValidationEngine.loadCodeDirectory(codeRepoDirPath);
            }

            if (this.valueSetRepoDir.isDirectory()) {
                ValidationEngine.loadValueSetDirectory(valueSetRepoPath);
            }

            vocabRepo.toggleActiveDatabase();
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
