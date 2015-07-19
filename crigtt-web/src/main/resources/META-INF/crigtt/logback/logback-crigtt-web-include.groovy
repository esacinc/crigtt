import gov.hhs.onc.crigtt.logging.CrigttAppenderNames
import gov.hhs.onc.crigtt.web.context.impl.CrigttWebApplicationContext

/*====================================================================================================
= LOGGERS: PROJECT
=====================================================================================================*/
logger(CrigttWebApplicationContext.name, ALL, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)
