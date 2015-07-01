<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="2.0"
    xmlns:validate="urn:gov.hhs.onc.crigtt:validate"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!--====================================================================================================
    = CONSTANTS
    =====================================================================================================-->
    <xsl:variable name="LF"><xsl:text xml:space="preserve">&#10;</xsl:text></xsl:variable>
    
    <!--====================================================================================================
    = TEMPLATES: CALLED
    =====================================================================================================-->
    <xsl:template name="label">
        <xsl:param name="name"/>
        <strong><xsl:value-of select="validate:escape-html($name)"/></strong>:
    </xsl:template>
    
    <xsl:template name="propValue">
        <xsl:param name="value"/>
        <xsl:param name="valueContainerTagName" select="'span'"/>
        <xsl:choose>
            <xsl:when test="exists($value) and not(empty($value))">
                <xsl:element name="{$valueContainerTagName}"><xsl:value-of select="validate:escape-html($value)"/></xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <em>None</em>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="prop">
        <xsl:param name="name"/>
        <xsl:param name="value"/>
        <xsl:param name="valueContainerTagName" select="'span'"/>
        <xsl:call-template name="label">
            <xsl:with-param name="name" select="$name"/>
        </xsl:call-template>
        <xsl:call-template name="propValue">
            <xsl:with-param name="value" select="$value"/>
            <xsl:with-param name="valueContainerTagName" select="$valueContainerTagName"/>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template name="component">
        <xsl:param name="elem"/>
        <xsl:choose>
            <xsl:when test="exists($elem)">
                <xsl:call-template name="prop">
                    <xsl:with-param name="name" select="'ID'"/>
                    <xsl:with-param name="value">
                        <xsl:if test="exists($elem/validate:id)">
                            <xsl:value-of select="$elem/validate:id/text()"/>
                        </xsl:if>
                    </xsl:with-param>
                </xsl:call-template>
                <xsl:call-template name="prop">
                    <xsl:with-param name="name" select="'Name'"/>
                    <xsl:with-param name="value">
                        <xsl:if test="exists($elem/validate:name)">
                            <xsl:value-of select="$elem/validate:name/text()"/>
                        </xsl:if>
                    </xsl:with-param>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise><em>None</em></xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <!--====================================================================================================
    = TEMPLATES: MATCHED
    =====================================================================================================-->
    <xsl:template match="/validate:error">
        <div>
            <h4><strong>Error</strong></h4>
            <ul>
                <li>
                    <xsl:call-template name="prop">
                        <xsl:with-param name="name" select="'Exception'"/>
                        <xsl:with-param name="value" select="string-join(validate:*[(local-name() = 'message') or (local-name() = 'stackTrace')]/text(), $LF)"/>
                        <xsl:with-param name="valueContainerTagName" select="'pre'"/>
                    </xsl:call-template>
                </li>
            </ul>
        </div>
    </xsl:template>
    
    <xsl:template match="/validate:report">
        <div>
            <div>
                <ul>
                    <li>
                        <xsl:call-template name="prop">
                            <xsl:with-param name="name" select="'ID'"/>
                            <xsl:with-param name="value" select="validate:id/text()"/>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="prop">
                            <xsl:with-param name="name" select="'Submitted'"/>
                            <xsl:with-param name="value">
                                <xsl:if test="exists(validate:submittedTimestamp)">
                                    <xsl:value-of select="validate:format-timestamp(validate:submittedTimestamp/text())"/>
                                </xsl:if>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="prop">
                            <xsl:with-param name="name" select="'Processed'"/>
                            <xsl:with-param name="value">
                                <xsl:if test="exists(validate:processedTimestamp)">
                                    <xsl:value-of select="validate:format-timestamp(validate:processedTimestamp/text())"/>
                                </xsl:if>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="label">
                            <xsl:with-param name="name" select="'Document'"/>
                        </xsl:call-template>
                        <ul>
                            <li>
                                <xsl:call-template name="prop">
                                    <xsl:with-param name="name" select="'File Name'"/>
                                    <xsl:with-param name="value" select="validate:document/validate:fileName/text()"/>
                                </xsl:call-template>
                            </li>
                            <li>
                                <xsl:call-template name="prop">
                                    <xsl:with-param name="name" select="'Hash (SHA-512)'"/>
                                    <xsl:with-param name="value">
                                        <xsl:if test="exists(validate:document/validate:hash)">
                                            <xsl:value-of select="xsd:string(xsd:base64Binary(validate:document/validate:hash/text()))"/>
                                        </xsl:if>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Status</th>
                            <th>Level</th>
                            <th>Location</th>
                            <th>Expression</th>
                            <th>Schema</th>
                            <th>Phase</th>
                            <th>Pattern</th>
                            <th>Rule</th>
                            <th>Assertion</th>
                            <th>Value Set</th>
                            <th>Code System</th>
                            <th>Code</th>
                            <th>Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="validate:results/validate:events/validate:event">
                            <tr>
                                <td>
                                    <xsl:call-template name="propValue">
                                        <xsl:with-param name="value" select="validate:id/text()"/>
                                    </xsl:call-template>
                                </td>
                                <td>
                                    <xsl:call-template name="propValue">
                                        <xsl:with-param name="value">
                                            <xsl:choose>
                                                <xsl:when test="xsd:boolean(validate:status/text())">Pass</xsl:when>
                                                <xsl:otherwise>Fail</xsl:otherwise>
                                            </xsl:choose>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="exists(validate:location)">
                                            <xsl:call-template name="prop">
                                                <xsl:with-param name="name" select="'Node Expression'"/>
                                                <xsl:with-param name="value">
                                                    <xsl:if test="exists(validate:location/validate:nodeExpression)">
                                                        <xsl:value-of select="validate:location/validate:nodeExpression/text()"/>
                                                    </xsl:if>
                                                </xsl:with-param>
                                                <xsl:with-param name="valueContainerTagName" select="'pre'"/>
                                            </xsl:call-template>
                                            <xsl:call-template name="prop">
                                                <xsl:with-param name="name" select="'Line #'"/>
                                                <xsl:with-param name="value">
                                                    <xsl:if test="exists(validate:location/validate:lineNumber)">
                                                        <xsl:value-of select="validate:location/validate:lineNumber/text()"/>
                                                    </xsl:if>
                                                </xsl:with-param>
                                            </xsl:call-template>
                                            <xsl:call-template name="prop">
                                                <xsl:with-param name="name" select="'Column #'"/>
                                                <xsl:with-param name="value">
                                                    <xsl:if test="exists(validate:location/validate:columnNumber)">
                                                        <xsl:value-of select="validate:location/validate:columnNumber/text()"/>
                                                    </xsl:if>
                                                </xsl:with-param>
                                            </xsl:call-template>
                                        </xsl:when>
                                        <xsl:otherwise><em>None</em></xsl:otherwise>
                                    </xsl:choose>
                                </td>
                                <td>
                                    <xsl:call-template name="prop">
                                        <xsl:with-param name="name" select="'Context Expression'"/>
                                        <xsl:with-param name="value">
                                            <xsl:if test="exists(validate:contextExpression)">
                                                <xsl:value-of select="validate:contextExpression/text()"/>
                                            </xsl:if>
                                        </xsl:with-param>
                                        <xsl:with-param name="valueContainerTagName" select="'pre'"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="prop">
                                        <xsl:with-param name="name" select="'Test Expression'"/>
                                        <xsl:with-param name="value">
                                            <xsl:if test="exists(validate:testExpression)">
                                                <xsl:value-of select="validate:testExpression/text()"/>
                                            </xsl:if>
                                        </xsl:with-param>
                                        <xsl:with-param name="valueContainerTagName" select="'pre'"/>
                                    </xsl:call-template>
                                </td>
                                <td>
                                    <xsl:call-template name="component">
                                        <xsl:with-param name="elem" select="validate:schema"/>
                                    </xsl:call-template>
                                </td>
                                <td>
                                    <xsl:call-template name="component">
                                        <xsl:with-param name="elem" select="validate:phase"/>
                                    </xsl:call-template>
                                </td>
                                <td>
                                    <xsl:call-template name="component">
                                        <xsl:with-param name="elem" select="validate:pattern"/>
                                    </xsl:call-template>
                                </td>
                                <td>
                                    <xsl:call-template name="component">
                                        <xsl:with-param name="elem" select="validate:rule"/>
                                    </xsl:call-template>
                                </td>
                                <td>
                                    <xsl:call-template name="component">
                                        <xsl:with-param name="elem" select="validate:assertion"/>
                                    </xsl:call-template>
                                </td>
                                <td>
                                    <xsl:call-template name="component">
                                        <xsl:with-param name="elem" select="validate:valueSet"/>
                                    </xsl:call-template>
                                </td>
                                <td>
                                    <xsl:call-template name="component">
                                        <xsl:with-param name="elem" select="validate:codeSystem"/>
                                    </xsl:call-template>
                                </td>
                                <td>
                                    <xsl:call-template name="component">
                                        <xsl:with-param name="elem" select="validate:code"/>
                                    </xsl:call-template>
                                </td>
                                <td>
                                    <xsl:call-template name="propValue">
                                        <xsl:with-param name="value">
                                            <xsl:if test="exists(validate:description)">
                                                <xsl:value-of select="validate:description/text()"/>
                                            </xsl:if>
                                        </xsl:with-param>
                                        <xsl:with-param name="valueContainerTagName" select="'pre'"/>
                                    </xsl:call-template>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>