ant.fileset(dir: project.properties["project.build.jaxbGeneratedSourceDirectory"], includes: "**/*.java").each{
    if (it.file.name ==~ /^package\-info\.java$/) {
        it.file.delete()
    } else if (it.file.name ==~ /^((JAXBContext|Object)Factory)\.java$/) {
        it.file.write(it.file.text.replaceFirst(~/(\npublic\s+class\s+[a-zA-Z]+\s+)/,
            "\n@SuppressWarnings({ com.github.sebhoss.warnings.CompilerWarnings.RAWTYPES, com.github.sebhoss.warnings.CompilerWarnings.UNCHECKED })\$1"))
    }
}
