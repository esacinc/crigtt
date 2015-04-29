import ch.qos.logback.classic.Level
import ch.qos.logback.classic.Logger
import ch.qos.logback.classic.LoggerContext
import com.github.sebhoss.warnings.CompilerWarnings
import com.sun.codemodel.JCodeModel
import com.sun.codemodel.JMod
import com.sun.tools.xjc.AbortException
import com.sun.tools.xjc.ErrorReceiver
import com.sun.tools.xjc.Language
import com.sun.tools.xjc.ModelLoader
import com.sun.tools.xjc.Options
import java.util.stream.Collectors
import javax.annotation.Nullable
import javax.xml.bind.annotation.XmlNs
import javax.xml.bind.annotation.XmlSchema
import org.apache.commons.lang3.ArrayUtils
import org.apache.commons.lang3.BooleanUtils
import org.apache.commons.lang3.ObjectUtils
import org.apache.commons.lang3.StringUtils
import org.apache.maven.plugin.MojoExecutionException
import org.apache.maven.plugin.logging.Log
import org.slf4j.impl.StaticLoggerBinder
import org.springframework.context.ConfigurableApplicationContext
import org.xml.sax.SAXParseException

def class MavenErrorReceiver extends ErrorReceiver {
    private Log log
    private String msg

    MavenErrorReceiver(Log log, String msg) {
        this.log = log
        this.msg = msg
    }

    @Override
    void fatalError(SAXParseException exception) throws AbortException {
        this.log.error(this.msg, exception)
    }
    
    @Override
    void error(SAXParseException exception) throws AbortException {
        this.log.error(this.msg, exception)
    }

    @Override
    void warning(SAXParseException exception) throws AbortException {
        this.log.warn(this.msg, exception)
    }

    @Override
    void info(SAXParseException exception) {
        this.log.info(this.msg, exception)
    }
}

def String[] tokenize(@Nullable String str) {
    return this.tokenize(str, null);
}

def String[] tokenize(@Nullable String str, @Nullable String defaultStr) {
    return ObjectUtils.defaultIfNull(org.springframework.util.StringUtils.tokenizeToStringArray(ObjectUtils.defaultIfNull(str, defaultStr),
        ConfigurableApplicationContext.CONFIG_LOCATION_DELIMITERS), ArrayUtils.EMPTY_STRING_ARRAY);
}

def final BASE_ARGS = ArrayUtils.toArray(
    "-mark-generated",
    "-Xannotate",
    "-Xclone",
    "-Xdv",
    "-Xinheritance",
    "-Xsetters",
    "-Xsetters-mode=direct",
    "-Xsimplify",
    "-Xwildcard"
)

def final IMPL_PKG_NAME_SUFFIX = ".impl"

def final BASE_PKG_NAME = "gov.hhs.onc.crigtt"
def final API_PKG_NAME = BASE_PKG_NAME + ".api"
def final SCHEMATRON_API_PKG_NAME = API_PKG_NAME + ".schematron"
def final XML_PKG_NAME = BASE_PKG_NAME + ".xml"

def final GETTER_METHOD_NAME_PREFIX = "get"
def final SETTER_METHOD_NAME_PREFIX = "set"

def final CLONE_METHOD_NAME = "clone"
def final ID_GETTER_METHOD_NAME = GETTER_METHOD_NAME_PREFIX + "Id"

def final PLURAL_VAR_NAMES = [
    "active": "actives",
    "assert": "assertions",
    "diagnostic": "diagnostics",
    "dir": "directions",
    "emph": "emphases",
    "extends": "extensions",
    "href": "hrefs",
    "include": "includes",
    "let": "lets",
    "mixedContent": "content",
    "name": "names",
    "ns": "namespaces",
    "p": "paragraphs",
    "param": "parameters",
    "pattern": "patterns",
    "phase": "phases",
    "report": "reports",
    "rule": "rules",
    "span": "spans",
    "title": "titles",
    "valueOf": "valueOfs"
]

def final PLURAL_PROP_NAMES = new HashMap<String, String>(PLURAL_VAR_NAMES.size())

PLURAL_VAR_NAMES.each{
    PLURAL_PROP_NAMES[StringUtils.capitalize(it.key)] = StringUtils.capitalize(it.value)
}

((LoggerContext) StaticLoggerBinder.singleton.loggerFactory).getLogger(Logger.ROOT_LOGGER_NAME).setLevel(Level.INFO)

System.setProperty("javax.xml.accessExternalSchema", "all")

def bindingVars = this.binding.variables
def jaxbSrcDir = new File(project.properties["project.build.jaxbSourceDirectory"])

def outDir = new File(outDir)
outDir.mkdirs()
project.addCompileSourceRoot(outDir.path)

def opts = new Options()
opts.automaticNameConflictResolution = true
opts.compatibilityMode = Options.EXTENSION
opts.contentForWildcard = true
opts.encoding = project.properties["project.build.sourceEncoding"]
opts.schemaLanguage = Language.XMLSCHEMA
opts.targetDir = outDir
opts.verbose = BooleanUtils.toBoolean(((String) bindingVars["verbose"]))

(ant.fileset(dir: jaxbSrcDir) {
    this.tokenize(bindingVars["bindingIncludes"]).each{
        ant.include(name: it)
    }
    
    this.tokenize(bindingVars["bindingExcludes"]).each{
        ant.exclude(name: it)
    }
}).each{
    opts.addBindFile(it.file)
}

(ant.fileset(dir: new File(project.properties["project.build.schemaSourceDirectory"])) {
    this.tokenize(bindingVars["schemaIncludes"]).each{
        ant.include(name: it)
    }
    
    this.tokenize(bindingVars["schemaExcludes"]).each{
        ant.exclude(name: it)
    }
}).each{
    opts.addGrammar(it.file)
}

def args = ((String[]) ArrayUtils.addAll(BASE_ARGS, this.tokenize(bindingVars["args"])))
def argStr = StringUtils.join(args, " ")

try {
    opts.parseArguments(args)
} catch (e) {
    throw new MojoExecutionException("Unable to parse arguments: ${argStr}", e)
}

log.info("Parsed arguments: ${argStr}")

def codeModel = new JCodeModel()
def model = ModelLoader.load(opts, codeModel, new MavenErrorReceiver(log, "Unable to parse XML schema(s)."));
def beans = model.beans()
def numBeans = beans.size()
def privatePropName
def publicPropName

beans.values().each{
    it.properties.findAll{ it.collection }.each{
        if (PLURAL_VAR_NAMES.containsKey((privatePropName = it.getName(false)))) {
            it.setName(false, PLURAL_VAR_NAMES[privatePropName])
        }
        
        if (PLURAL_PROP_NAMES.containsKey((publicPropName = it.getName(true)))) {
            it.setName(true, PLURAL_PROP_NAMES[publicPropName])
        }
    }
}

def outline

try {
    outline = model.generateCode(opts, new MavenErrorReceiver(log, "Unable to generate code for XML schema(s)."))
} catch (e) {
    throw new MojoExecutionException("Unable to generate code outline for ${numBeans} class(es).", e)
}

log.info("Generated code outline for ${numBeans} class(es).")

def fieldNameSuffix = StringUtils.defaultString(bindingVars["fieldNameSuffix"])
def pkgNameSuffix = StringUtils.defaultString(bindingVars["pkgNameSuffix"])
def pkgName = SCHEMATRON_API_PKG_NAME + pkgNameSuffix
def implPkgName = pkgName + IMPL_PKG_NAME_SUFFIX
def xmlNsClassModel = codeModel.directClass((XML_PKG_NAME + ".CrigttXmlNs"))
def nsUriStaticRef = xmlNsClassModel.staticRef(("SCHEMATRON" + fieldNameSuffix + "_URI"))
def prefixStaticRef = xmlNsClassModel.staticRef(("SCHEMATRON" + fieldNameSuffix + "_PREFIX"))

codeModel._package(implPkgName).annotations().find({ it.annotationClass.name() == XmlSchema.class.simpleName })
    .param("namespace", nsUriStaticRef)
    .paramArray("xmlns").annotate(XmlNs.class).param("prefix", prefixStaticRef).param("namespaceURI", nsUriStaticRef)

def compilerWarningsClassName = CompilerWarnings.class.name
def compilerWarningsClassModel = codeModel.directClass(compilerWarningsClassName)
def rawTypesFieldName = "RAWTYPES"
def uncheckedFieldName = "UNCHECKED"
def rawTypesStaticRef = compilerWarningsClassModel.staticRef(rawTypesFieldName)
def uncheckedStaticRef = compilerWarningsClassModel.staticRef(uncheckedFieldName)
def apiBeanClassModel = codeModel.directClass((API_PKG_NAME + ".ApiBean"))
def identifiableApiBeanClassModel = codeModel.directClass((API_PKG_NAME + ".IdentifiableApiBean"))
def classRef
def classMethodTypes
def propSetterName

outline.allPackageContexts.each{
    it.objectFactory().annotate(SuppressWarnings.class).paramArray("value").param(rawTypesStaticRef).param(uncheckedStaticRef)
    
    it.classes.each{
        (classRef = it.ref).method(JMod.NONE, classRef, CLONE_METHOD_NAME)
        
        classMethodTypes = classRef.methods().stream().collect(Collectors.toMap({ it.name() }, { it.type() }))
        
        classRef._implements((classMethodTypes.containsKey(ID_GETTER_METHOD_NAME) ? identifiableApiBeanClassModel : apiBeanClassModel))
        
        it.target.properties.findAll{ it.collection }.each{
            if (!classMethodTypes.containsKey((propSetterName = (SETTER_METHOD_NAME_PREFIX + (publicPropName = it.getName(true)))))) {
                classRef.method(JMod.NONE, codeModel.VOID, propSetterName).param(classMethodTypes[(GETTER_METHOD_NAME_PREFIX + publicPropName)], "value")
            }
        }
    }
}

try {
    codeModel.build(opts.createCodeWriter())
} catch (e) {
    throw new MojoExecutionException("Unable to build code model for ${numBeans} class(es).", e)
}

log.info("Built code model for ${numBeans} class(es).")

ant.fileset(dir: outDir, includes: "**/JAXBContextFactory.java").each{
    it.file.write(it.file.text.replaceFirst(~/(\npublic\s+class\s+JAXBContextFactory\s+)/,
        "\n@${SuppressWarnings.class.simpleName}({ ${compilerWarningsClassName}.${rawTypesFieldName}, ${compilerWarningsClassName}.${uncheckedFieldName} })\$1"))
}
