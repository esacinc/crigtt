import ch.qos.logback.classic.Level
import ch.qos.logback.classic.Logger
import ch.qos.logback.classic.LoggerContext
import com.fasterxml.jackson.annotation.JsonProperty
import com.github.sebhoss.warnings.CompilerWarnings
import com.sun.codemodel.JCodeModel
import com.sun.codemodel.JMod
import com.sun.tools.xjc.AbortException
import com.sun.tools.xjc.ErrorReceiver
import com.sun.tools.xjc.Language
import com.sun.tools.xjc.ModelLoader
import com.sun.tools.xjc.Options
import com.sun.tools.xjc.generator.bean.DualObjectFactoryGenerator
import java.util.regex.Pattern
import java.util.stream.Collectors
import java.util.stream.Stream
import javax.annotation.Nullable
import javax.xml.bind.annotation.XmlNs
import javax.xml.bind.annotation.XmlSchema
import org.apache.commons.lang3.ArrayUtils
import org.apache.commons.lang3.BooleanUtils
import org.apache.commons.lang3.ClassUtils
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
        
        throw new AbortException()
    }
    
    @Override
    void error(SAXParseException exception) throws AbortException {
        this.log.error(this.msg, exception)
        
        throw new AbortException()
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

def String extractClassSimpleName(String className) {
    return className.substring((className.lastIndexOf(ClassUtils.PACKAGE_SEPARATOR) + 1), className.length())
}

def String extractPackageName(String className) {
    return className.substring(0, className.lastIndexOf(ClassUtils.PACKAGE_SEPARATOR))
}

def Map<String, String> tokenizeMap(@Nullable String str) {
    def tokens = this.tokenize(str)
    def tokenMap = new LinkedHashMap<String, String>(tokens.length)
    def tokenParts
    
    Stream.of(tokens).each{ tokenMap.put((tokenParts = StringUtils.split(it, "=", 2))[0], tokenParts[1]) }
    
    return tokenMap
}

def String[] tokenize(@Nullable String str) {
    return this.tokenize(str, null);
}

def String[] tokenize(@Nullable String str, @Nullable String defaultStr) {
    return ObjectUtils.defaultIfNull(org.springframework.util.StringUtils.tokenizeToStringArray(ObjectUtils.defaultIfNull(str, defaultStr),
        ConfigurableApplicationContext.CONFIG_LOCATION_DELIMITERS), ArrayUtils.EMPTY_STRING_ARRAY);
}

def final BASE_ARGS = [
    "-mark-generated",
    "-Xannotate",
    "-Xsetters",
    "-Xsetters-mode=direct"
] as String[]

def final JAVA_SRC_FILE_EXT = ".java"

def final IMPL_PKG_NAME_SUFFIX = ".impl"

def final ABSTRACT_CLASS_NAME_PREFIX = "Abstract"

def final IMPL_CLASS_NAME_SUFFIX = "Impl"
def final BEAN_CLASS_NAME_SUFFIX = "Bean"
def final BEAN_IMPL_CLASS_NAME_SUFFIX = BEAN_CLASS_NAME_SUFFIX + IMPL_CLASS_NAME_SUFFIX

def final JAXB_CONTEXT_FACTORY_SIMPLE_CLASS_NAME = "JAXBContextFactory"

def final GETTER_METHOD_NAME_PREFIX = "get"
def final IS_GETTER_METHOD_NAME_PREFIX = "is"
def final SETTER_METHOD_NAME_PREFIX = "set"

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
opts.noFileHeader = true
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

def outline

try {
    outline = model.generateCode(opts, new MavenErrorReceiver(log, "Unable to generate code for XML schema(s)."))
} catch (e) {
    throw new MojoExecutionException("Unable to generate code outline for ${numBeans} class(es).", e)
}

log.info("Generated code outline for ${numBeans} class(es).")

def pkgNames = this.tokenizeMap(bindingVars["pkgNames"])
def implPkgNames = pkgNames.collectEntries{ [ it.key, (it.value + IMPL_PKG_NAME_SUFFIX) ] }
def xmlNsPrefixes = this.tokenizeMap(bindingVars["xmlNsPrefixes"])
def xmlNsPrefixStaticRefs = xmlNsPrefixes.collectEntries(new LinkedHashMap<String, String>(xmlNsPrefixes.size()),
    { [ it.key, codeModel.directClass(this.extractPackageName(it.value)).staticRef(this.extractClassSimpleName(it.value)) ] })
def xmlNsUris = this.tokenizeMap(bindingVars["xmlNsUris"])
def xmlNsUriStaticRefs = xmlNsUris.collectEntries(new LinkedHashMap<String, String>(xmlNsUris.size()),
    { [ it.key, codeModel.directClass(this.extractPackageName(it.value)).staticRef(this.extractClassSimpleName(it.value)) ] })

implPkgNames.each{
    codeModel._package(it.value).annotations().find{ it.annotationClass.name() == XmlSchema.class.simpleName }
        .param("namespace", xmlNsUriStaticRefs[it.key])
        .paramArray("xmlns").annotate(XmlNs.class).param("prefix", xmlNsPrefixStaticRefs[it.key]).param("namespaceURI", xmlNsUriStaticRefs[it.key])
}

def compilerWarningsClassName = CompilerWarnings.class.name
def compilerWarningsClassModel = codeModel.directClass(compilerWarningsClassName)
def rawTypesFieldName = "RAWTYPES"
def uncheckedFieldName = "UNCHECKED"
def rawTypesStaticRef = compilerWarningsClassModel.staticRef(rawTypesFieldName)
def uncheckedStaticRef = compilerWarningsClassModel.staticRef(uncheckedFieldName)
def objFactoryGen
def classRef
def implClass
def classMethods
def publicPropName
def propGetterName
def propIsGetter
def propGetter
def implPropGetter
def propSetterName

outline.allPackageContexts.each{
    [
        (objFactoryGen = ((DualObjectFactoryGenerator) it.objectFactoryGenerator())).publicOFG,
        objFactoryGen.privateOFG
    ].each{ it.objectFactory.annotate(SuppressWarnings.class).paramArray("value").param(rawTypesStaticRef).param(uncheckedStaticRef) }
    
    it.classes?.each{
        if (((classRef = it.ref) == null) || ((implClass = it.implClass) == null)) {
            return;
        }
        
        classMethods = classRef.methods().stream().collect(Collectors.toMap({ it.name() }, { it }))
        implClassMethods = implClass.methods().stream().collect(Collectors.toMap({ it.name() }, { it }))

        it.target.properties.each {
            if (implClassMethods.containsKey((propGetterName = (GETTER_METHOD_NAME_PREFIX + (publicPropName = it.getName(true))))) ||
                (propIsGetter = implClassMethods.containsKey((propGetterName = (IS_GETTER_METHOD_NAME_PREFIX + publicPropName))))) {
                propGetter = classMethods[propGetterName]
                
                (implPropGetter = implClassMethods[propGetterName]).annotations().find{ it.annotationClass.name() == JsonProperty.class.simpleName }.each{
                    implPropGetter.removeAnnotation(it)
                    
                    propGetter.annotate(JsonProperty.class)
                }
                
                if (propIsGetter) {
                    [ propGetter, implPropGetter ].each{ it.name((GETTER_METHOD_NAME_PREFIX + publicPropName)) }
                }
            }
            
            if (it.collection && !classMethods.containsKey((propSetterName = (SETTER_METHOD_NAME_PREFIX + publicPropName)))) {
                classRef.method(JMod.NONE, codeModel.VOID, propSetterName).param(classMethods[propGetterName].type(), "values")
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

def srcFile
def srcFileBaseName
def srcFileContent

ant.fileset(dir: outDir, includes: "**/*${JAVA_SRC_FILE_EXT}").each{
    srcFileContent = (srcFile = it.file).text.replaceAll(Pattern.compile("(\\s+)([^\\s]+${BEAN_IMPL_CLASS_NAME_SUFFIX})(\\s+|\\.)"), {
        it[1] + ABSTRACT_CLASS_NAME_PREFIX + StringUtils.removeEnd(it[2], IMPL_CLASS_NAME_SUFFIX) + it[3]
    })
    
    if ((srcFileBaseName = StringUtils.removeEnd(srcFile.name, JAVA_SRC_FILE_EXT)) == JAXB_CONTEXT_FACTORY_SIMPLE_CLASS_NAME) {
        srcFileContent = srcFileContent.replaceFirst(Pattern.compile("(\\npublic\\s+class\\s+${JAXB_CONTEXT_FACTORY_SIMPLE_CLASS_NAME}\\s+)"),
        "\n@${SuppressWarnings.class.simpleName}({ ${compilerWarningsClassName}.${rawTypesFieldName}, ${compilerWarningsClassName}.${uncheckedFieldName} })\$1")
    }
    
    srcFile.write(srcFileContent)
    
    if (srcFileBaseName.endsWith(BEAN_IMPL_CLASS_NAME_SUFFIX)) {
        srcFile.renameTo(new File(srcFile.parentFile,
            (ABSTRACT_CLASS_NAME_PREFIX + StringUtils.removeEnd(srcFileBaseName, IMPL_CLASS_NAME_SUFFIX) + JAVA_SRC_FILE_EXT)))
    }
}
