package gov.hhs.onc.crigtt.validate.vocab.impl;

import com.orientechnologies.orient.server.OServer;
import com.orientechnologies.orient.server.config.OServerStorageConfiguration;
import gov.hhs.onc.crigtt.db.CrigttDbPaths;
import gov.hhs.onc.crigtt.db.impl.CrigttDbServerConfiguration;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.validate.ValidatorCode;
import gov.hhs.onc.crigtt.validate.ValidatorCodeSystem;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorLevel;
import gov.hhs.onc.crigtt.validate.ValidatorLocation;
import gov.hhs.onc.crigtt.validate.impl.ValidatorCodeImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorCodeSystemImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorEventImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorLocationImpl;
import gov.hhs.onc.crigtt.validate.vocab.DynamicVocabValidatorService;
import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import net.sf.saxon.dom.NodeOverNodeInfo;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.sxpath.IndependentContext;
import org.sitenv.vocabularies.engine.ValidationEngine;
import org.sitenv.vocabularies.repository.VocabularyRepository;
import org.sitenv.vocabularies.repository.VocabularyRepositoryConnectionInfo;
import org.sitenv.xml.validators.ccda.CcdaValidatorResult;
import org.sitenv.xml.xpathvalidator.engine.XPathValidationEngine;
import org.sitenv.xml.xpathvalidator.engine.data.XPathValidatorResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.xml.sax.SAXException;

public class DynamicVocabValidatorServiceImpl implements DynamicVocabValidatorService {
    private final static Logger LOGGER = LoggerFactory.getLogger(DynamicVocabValidatorServiceImpl.class);

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

    @javax.annotation.Resource(name = "xpathCompilerCrigtt")
    private CrigttXpathCompiler xpathCompiler;

    private String[] codeLoaderClassNames;
    private String[] valueSetLoaderClassNames;
    private OServer dbServer;
    private XPathValidationEngine engine;

    @Override
    public List<ValidatorEvent> validate(IndependentContext xpathContext, XdmDocument doc, ByteArraySource docSrc) throws IOException, SAXException,
        SaxonApiException {
        List<XPathValidatorResult> engineResults;

        try (InputStream docInStream = docSrc.getInputStream()) {
            engineResults = this.engine.validate(docInStream);
        }

        List<ValidatorEvent> events = new ArrayList<>(engineResults.size());
        ValidatorEvent event;
        int xpathNodeIndex;
        String xpathExpr;
        XdmValue locValue;
        NodeInfo locNodeInfo;
        CrigttLocation locObj;
        ValidatorLocation loc;
        CcdaValidatorResult ccdaEngineResult;
        ValidatorCodeSystem codeSystem;
        ValidatorCode code;

        for (XPathValidatorResult engineResult : engineResults) {
            events.add((event = new ValidatorEventImpl()));
            event.setStatus(false);

            if (engineResult.hasError()) {
                event.setLevel(ValidatorLevel.ERROR);
                event.setDescription(engineResult.getErrorMessage());
            } else if (engineResult.hasWarning()) {
                event.setLevel(ValidatorLevel.WARN);
                event.setDescription(engineResult.getWarningMessage());
            } else {
                event.setLevel(ValidatorLevel.INFO);
                event.setDescription(engineResult.getInfoMessage());
            }

            xpathNodeIndex = engineResult.getNodeIndex();
            xpathExpr = engineResult.getXpathExpression();
            event.setTestExpression(xpathExpr);

            locValue = this.xpathCompiler.evaluate(xpathExpr, xpathContext, doc);

            if ((locValue != null) && (locValue.size() > xpathNodeIndex)) {
                event.setLocation((loc = new ValidatorLocationImpl()));
                loc.setColumnNumber((locObj = new CrigttLocation((locNodeInfo = ((XdmNode) locValue.itemAt(xpathNodeIndex)).getUnderlyingNode())))
                    .getColumnNumber());
                loc.setLineNumber(locObj.getLineNumber());
                loc.setNodeExpression(CrigttXpathUtils.buildAbsoluteExpression(NodeOverNodeInfo.wrap(locNodeInfo)));
            }

            if (!(engineResult instanceof CcdaValidatorResult)) {
                continue;
            }

            event.setCodeSystem((codeSystem = new ValidatorCodeSystemImpl()));
            codeSystem.setId((ccdaEngineResult = ((CcdaValidatorResult) engineResult)).getCodeSystem());
            codeSystem.setName(ccdaEngineResult.getCodeSystemName());

            event.setCode((code = new ValidatorCodeImpl()));
            code.setId(ccdaEngineResult.getCode());
            code.setName(ccdaEngineResult.getDisplayName());
        }

        return events;
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

        VocabularyRepository vocabRepo = VocabularyRepository.getInstance();
        vocabRepo.setOrientDbServer(this.dbServer);
        vocabRepo.setPrimaryNodeCredentials(this.buildRepositoryConnectionInfo(this.dbServerConfig.storages[0]));
        vocabRepo.setSecondaryNodeCredentials(this.buildRepositoryConnectionInfo(this.dbServerConfig.storages[1]));

        for (String codeLoaderClassName : this.codeLoaderClassNames) {
            Class.forName(codeLoaderClassName);
        }

        for (String valueSetLoaderClassName : this.valueSetLoaderClassNames) {
            Class.forName(valueSetLoaderClassName);
        }

        if (!dbPrimaryStorageExists || this.forceLoad) {
            String codeRepoDirPath = this.codeRepoDir.getPath(), valueSetRepoPath = this.valueSetRepoDir.getPath();

            LOGGER.info(String.format(
                "Loading (force=%s) contents of dynamic vocabulary repositories (codeRepoPath=%s, valueSetRepoPath=%s) into primary database (path=%s).",
                this.forceLoad, codeRepoDirPath, valueSetRepoPath, this.dbPrimaryStorageDir.getPath()));

            VocabularyRepository.getInstance().toggleActiveDatabase();

            if (this.codeRepoDir.isDirectory()) {
                ValidationEngine.loadCodeDirectory(codeRepoDirPath);
            }

            if (this.valueSetRepoDir.isDirectory()) {
                ValidationEngine.loadValueSetDirectory(valueSetRepoPath);
            }

            VocabularyRepository.getInstance().toggleActiveDatabase();
        }

        (this.engine = new XPathValidationEngine()).initialize(this.engineConfigFile.asInputSource());
    }

    private VocabularyRepositoryConnectionInfo buildRepositoryConnectionInfo(OServerStorageConfiguration dbStorage) {
        VocabularyRepositoryConnectionInfo repoConnInfo = new VocabularyRepositoryConnectionInfo();
        repoConnInfo.setConnectionInfo((CrigttDbPaths.REMOTE_PROTOCOL_PREFIX + this.dbServerConfig.getIpAddress() + CrigttDbPaths.SERVER_DELIM
            + this.dbServerConfig.getPort() + CrigttDbPaths.DELIM + dbStorage.name));
        repoConnInfo.setPassword(dbStorage.userPassword);
        repoConnInfo.setUsername(dbStorage.userName);

        return repoConnInfo;
    }

    @Override
    public String[] getCodeLoaderClassNames() {
        return this.codeLoaderClassNames;
    }

    @Override
    public void setCodeLoaderClassNames(String ... codeLoaderClassNames) {
        this.codeLoaderClassNames = codeLoaderClassNames;
    }

    @Override
    public String[] getValueSetLoaderClassNames() {
        return this.valueSetLoaderClassNames;
    }

    @Override
    public void setValueSetLoaderClassNames(String ... valueSetLoaderClassNames) {
        this.valueSetLoaderClassNames = valueSetLoaderClassNames;
    }
}
