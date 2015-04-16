def jaxbGenSrcDirs = String.join(",", project.properties["project.build.jaxbSchematronGeneratedSourceDirectory"],
    project.properties["project.build.jaxbSchematronSvrlGeneratedSourceDirectory"])

ant.multirootfileset(basedirs: jaxbGenSrcDirs, includes: "**/*.java").each{
    if (it.file.name ==~ /^package\-info\.java$/) {
        it.file.delete()
    } else if (it.file.name ==~ /^((JAXBContext|Object)Factory)\.java$/) {
        it.file.write(it.file.text.replaceFirst(~/(\npublic\s+class\s+[a-zA-Z]+\s+)/,
            "\n@SuppressWarnings({ com.github.sebhoss.warnings.CompilerWarnings.RAWTYPES, com.github.sebhoss.warnings.CompilerWarnings.UNCHECKED })\$1"))
    }
}
