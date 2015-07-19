import gov.hhs.onc.crigtt.context.CrigttProperties
import gov.hhs.onc.crigtt.io.CrigttFileExtensions
import gov.hhs.onc.crigtt.logging.utils.CrigttLoggingUtils

/*====================================================================================================
= CONTEXT
=====================================================================================================*/
context.name = CrigttLoggingUtils.getProperty(context, CrigttProperties.APP_NAME_NAME)

/*====================================================================================================
= INCLUDES
=====================================================================================================*/
CrigttLoggingUtils.include(context, "META-INF/crigtt/logback/logback-crigtt-include.${CrigttFileExtensions.GROOVY}")
