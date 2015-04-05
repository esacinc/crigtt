<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="2.0" xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="svrl:schematron-output">
        <html>
            <head>
                <style type="text/css">
                ul li.info strong {
                    color: rgb(0, 100, 200);
                }
                    
                ul li.warning strong {
                    color: rgb(150, 150, 0);
                }
                
                ul li.error strong {
                    color: rgb(200, 0, 0);
                }
                </style>
                <title>Cancer Registry C-CDA R2 Schematron Validation Results</title>
            </head>
            <body>
                <h1>Summary</h1>
                <ul>
                    <li>
                        <strong>Total Rule(s)</strong>:
                        <xsl:value-of select="count(svrl:active-pattern)"/>
                    </li>
                    <li>
                        <strong># of Warning(s)</strong>:
                        <xsl:value-of select="count(svrl:failed-assert[preceding-sibling::svrl:fired-rule[1][ends-with(@id, '-warnings')]])"/>
                    </li>
                    <li>
                        <strong># of Error(s)</strong>:
                        <xsl:value-of select="count(svrl:failed-assert[preceding-sibling::svrl:fired-rule[1][ends-with(@id, '-errors')]])"/>
                    </li>
                </ul>
                <h1>Result(s)</h1>
                <ul>
                    <xsl:apply-templates select="svrl:failed-assert"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="svrl:failed-assert">
        <xsl:choose>
            <xsl:when test="preceding-sibling::svrl:fired-rule[1][ends-with(@id, '-warnings')]">
                <li class="warning"><strong>WARNING</strong> (at <xsl:value-of select="@location"/>): <xsl:value-of select="svrl:text"/></li>
            </xsl:when>
            <xsl:when test="preceding-sibling::svrl:fired-rule[1][ends-with(@id, '-errors')]">
                <li class="error"><strong>ERROR</strong> (at <xsl:value-of select="@location"/>): <xsl:value-of select="svrl:text"/></li>
            </xsl:when>
            <xsl:otherwise>
                <li class="info"><strong>INFO</strong> (at <xsl:value-of select="@location"/>): <xsl:value-of select="svrl:text"/></li>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>