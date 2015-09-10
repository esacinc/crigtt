<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    exclude-result-prefixes="#all"
    version="2.0"
    xmlns:validate="urn:gov.hhs.onc.crigtt:validate"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!--====================================================================================================
    = IMPORTS
    =====================================================================================================-->
    <xsl:import href="crigtt-validate-response.xsl"/>
    
    <!--====================================================================================================
    = TEMPLATES: CALLED
    =====================================================================================================-->
    <xsl:template name="label">
        <xsl:param name="classNames" select="$EMPTY"/>
        <xsl:param name="iconName" select="$EMPTY"/>
        <xsl:param name="name"/>
        <xsl:element name="strong">
            <xsl:if test="not(validate:is-blank($classNames))">
                <xsl:attribute name="class" select="$classNames"/>
            </xsl:if>
            <xsl:if test="not(validate:is-blank($iconName))">
                <xsl:call-template name="icon">
                    <xsl:with-param name="name" select="$iconName"/>
                </xsl:call-template>
            </xsl:if>
            <xsl:value-of select="validate:escape-html($name)"/>
        </xsl:element>:
    </xsl:template>
    
    <xsl:template name="propValue">
        <xsl:param name="containerTagName" select="'span'"/>
        <xsl:param name="normalizeWhitespace" select="true()"/>
        <xsl:param name="sortKey" select="true()"/>
        <xsl:param name="value"/>
        <xsl:choose>
            <xsl:when test="exists($value) and not(validate:is-blank($value))">
                <xsl:element name="{$containerTagName}">
                    <xsl:attribute name="data-normalize-whitespace">
                        <xsl:value-of select="$normalizeWhitespace"/>
                    </xsl:attribute>
                    <xsl:if test="$sortKey">
                        <xsl:attribute name="data-sort-key" select="$sortKey"/>
                    </xsl:if>
                    <xsl:value-of select="validate:escape-html($value)"/>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <em data-sort-key="">None</em>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="prop">
        <xsl:param name="containerTagName" select="'span'"/>
        <xsl:param name="labelClassNames" select="$EMPTY"/>
        <xsl:param name="labelIconName" select="$EMPTY"/>
        <xsl:param name="name"/>
        <xsl:param name="normalizeWhitespace" select="true()"/>
        <xsl:param name="value"/>
        <xsl:param name="valueContainerTagName" select="'span'"/>
        <xsl:param name="valueNormalizeWhitespace" select="true()"/>
        <xsl:param name="valueSortKey" select="true()"/>
        <xsl:element name="{$containerTagName}">
            <xsl:attribute name="data-normalize-whitespace">
                <xsl:value-of select="$normalizeWhitespace"/>
            </xsl:attribute>
            <xsl:call-template name="label">
                <xsl:with-param name="classNames" select="$labelClassNames"/>
                <xsl:with-param name="iconName" select="$labelIconName"/>
                <xsl:with-param name="name" select="$name"/>
            </xsl:call-template>
            <xsl:call-template name="propValue">
                <xsl:with-param name="containerTagName" select="$valueContainerTagName"/>
                <xsl:with-param name="normalizeWhitespace" select="$valueNormalizeWhitespace"/>
                <xsl:with-param name="sortKey" select="$valueSortKey"/>
                <xsl:with-param name="value" select="$value"/>
            </xsl:call-template>
        </xsl:element>
    </xsl:template>
    
    <xsl:template name="component">
        <xsl:param name="elem"/>
        <xsl:param name="idSortKey" select="true()"/>
        <xsl:choose>
            <xsl:when test="exists($elem)">
                <ul>
                    <li>
                        <xsl:call-template name="prop">
                            <xsl:with-param name="name" select="'ID'"/>
                            <xsl:with-param name="value">
                                <xsl:if test="exists($elem/validate:id)">
                                    <xsl:value-of select="validate:default-if-blank(string-join($elem/validate:id/text(), $EMPTY), $EMPTY)"/>
                                </xsl:if>
                            </xsl:with-param>
                            <xsl:with-param name="valueSortKey" select="$idSortKey"/>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="prop">
                            <xsl:with-param name="name" select="'Name'"/>
                            <xsl:with-param name="value">
                                <xsl:if test="exists($elem/validate:name)">
                                    <xsl:value-of select="validate:default-if-blank(string-join($elem/validate:name/text(), $EMPTY), $EMPTY)"/>
                                </xsl:if>
                            </xsl:with-param>
                            <xsl:with-param name="valueSortKey" select="false()"/>
                        </xsl:call-template>
                    </li>
                </ul>
            </xsl:when>
            <xsl:otherwise><em data-sort-key="">None</em></xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="matchedComponent">
        <xsl:param name="expectedElems"/>
        <xsl:param name="actualElem"/>
        <xsl:choose>
            <xsl:when test="exists($actualElem)">
                <ul>
                    <li>
                        <strong>Actual</strong>
                        <xsl:call-template name="component">
                            <xsl:with-param name="elem" select="$actualElem"/>
                        </xsl:call-template>
                    </li>
                    <xsl:for-each select="$expectedElems">
                        <li>
                            <strong>Expected #<xsl:value-of select="position()"/></strong>
                            <xsl:call-template name="component">
                                <xsl:with-param name="elem" select="current()"/>
                                <xsl:with-param name="idSortKey" select="false()"/>
                            </xsl:call-template>
                        </li>
                    </xsl:for-each>
                </ul>
            </xsl:when>
            <xsl:otherwise><em data-sort-key="">None</em></xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="downloadButton">
        <xsl:param name="iconName"/>
        <xsl:param name="text"/>
        <xsl:param name="type"/>
        <xsl:call-template name="button">
            <xsl:with-param name="classNames" select="'btn-download'"/>
            <xsl:with-param name="iconName" select="$iconName"/>
            <xsl:with-param name="text" select="$text"/>
            <xsl:with-param name="type" select="$type"/>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template name="button">
        <xsl:param name="classNames"/>
        <xsl:param name="iconName"/>
        <xsl:param name="text" select="''"/>
        <xsl:param name="type"/>
        <button class="btn btn-default {$classNames}" data-type="{$type}">
            <xsl:call-template name="icon">
                <xsl:with-param name="name" select="$iconName"/>
            </xsl:call-template>
            <xsl:if test="not(validate:is-blank($text))">
                <xsl:value-of select="$text"/>
            </xsl:if>
        </button>
    </xsl:template>
    
    <xsl:template name="icon">
        <xsl:param name="name"/>
        <i class="fa fa-fw fa-{$name}"/>
    </xsl:template>
    
    <!--====================================================================================================
    = TEMPLATES: MATCHED
    =====================================================================================================-->
    <xsl:template match="/validate:error">
        <div class="alert alert-danger alert-dismissible" role="alert" data-normalize-whitespace="true">
            <button type="button" class="close" aria-label="Close" data-dismiss="alert">
                <span aria-hidden="true"><xsl:value-of select="$TIMES"/></span>
            </button>
            <h4>
                <xsl:call-template name="icon">
                    <xsl:with-param name="name" select="'exclamation-triangle'"/>
                </xsl:call-template>
                <strong>Error</strong>
            </h4>
            <ul>
                <li>
                    <xsl:call-template name="prop">
                        <xsl:with-param name="name" select="'Exception'"/>
                        <xsl:with-param name="value" select="string-join(validate:*[(local-name() = 'message') or
                            (local-name() = 'stackTrace')]/text(), $LF)"/>
                        <xsl:with-param name="valueContainerTagName" select="'pre'"/>
                        <xsl:with-param name="valueNormalizeWhitespace" select="false()"/>
                    </xsl:call-template>
                </li>
            </ul>
        </div>
    </xsl:template>
    
    <xsl:template match="/validate:report">
        <xsl:variable name="id" select="validate:id/text()"/>
        <xsl:variable name="formattedSubmittedTimestamp" select="validate:format-timestamp(validate:submittedTimestamp/text())"/>
        <xsl:variable name="doc" select="validate:document"/>
        <xsl:variable name="docFileName" select="$doc/validate:fileName/text()"/>
        <xsl:variable name="results" select="validate:results"/>
        <xsl:variable name="status" select="$results/validate:status/text()"/>
        <xsl:variable name="eventTotals" select="$results/validate:eventTotals"/>
        <xsl:variable name="numEvents" select="$eventTotals/validate:all/text()"/>
        <xsl:variable name="numInfoEvents" select="$eventTotals/validate:info/text()"/>
        <xsl:variable name="numWarnEvents" select="$eventTotals/validate:warn/text()"/>
        <xsl:variable name="numErrorEvents" select="$eventTotals/validate:error/text()"/>
        <xsl:variable name="errorStatus" select="xsd:integer($numErrorEvents) gt 0"/>
        <xsl:variable name="statusClassName">
            <xsl:choose>
                <xsl:when test="xsd:boolean($status)">success</xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="$errorStatus">danger</xsl:when>
                        <xsl:otherwise>warning</xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="statusIconName">
            <xsl:choose>
                <xsl:when test="xsd:boolean($status)">ok-circle</xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="$errorStatus">times-circle</xsl:when>
                        <xsl:otherwise>exclamation-circle</xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <div id="panel-validator-results-{$id}" class="panel panel-{$statusClassName}" data-normalize-whitespace="true">
            <div id="panel-heading-validator-results-{$id}" class="panel-heading" role="tab">
                <div class="panel-title">
                    <a href="#panel-collapse-validator-results-{$id}" aria-controls="panel-collapse-validator-results-{$id}" aria-expanded="true"
                        data-toggle="collapse" data-parent="#panel-group-validator-results">
                        <span>
                            <xsl:call-template name="icon">
                                <xsl:with-param name="name" select="$statusIconName"/>
                            </xsl:call-template>
                        </span>
                        <span>
                            <xsl:call-template name="prop">
                                <xsl:with-param name="containerTagName" select="'div'"/>
                                <xsl:with-param name="name" select="'Submitted'"/>
                                <xsl:with-param name="value" select="$formattedSubmittedTimestamp"/>
                            </xsl:call-template>
                            <xsl:call-template name="prop">
                                <xsl:with-param name="containerTagName" select="'div'"/>
                                <xsl:with-param name="name" select="'Document File Name'"/>
                                <xsl:with-param name="value" select="$docFileName"/>
                            </xsl:call-template>
                        </span>
                    </a>
                    <span class="well well-sm">
                        <xsl:call-template name="icon">
                            <xsl:with-param name="name" select="'download'"/>
                        </xsl:call-template>
                        <strong>Download</strong>:
                        <xsl:call-template name="downloadButton">
                            <xsl:with-param name="iconName" select="'file-text-o'"/>
                            <xsl:with-param name="text" select="'JSON'"/>
                            <xsl:with-param name="type" select="'json'"/>
                        </xsl:call-template>
                        <xsl:call-template name="downloadButton">
                            <xsl:with-param name="iconName" select="'file-code-o'"/>
                            <xsl:with-param name="text" select="'XML'"/>
                            <xsl:with-param name="type" select="'xml'"/>
                        </xsl:call-template>
                    </span>
                    <button type="button" class="close" aria-label="Close">
                        <span aria-hidden="true"><xsl:value-of select="$TIMES"/></span>
                    </button>
                </div>
            </div>
            <div id="panel-collapse-validator-results-{$id}" class="collapse in panel-collapse" aria-labelledby="panel-heading-validator-results-{$id}"
                role="tabpanel">
                <div class="panel-body">
                    <div role="tabpanel">
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation">
                                <a href="#tab-pane-validator-results-details-{$id}" aria-controls="tab-pane-validator-results-details-{$id}" data-toggle="tab"
                                    role="tab">
                                    <xsl:call-template name="icon">
                                        <xsl:with-param name="name" select="'cubes'"/>
                                    </xsl:call-template>
                                    <strong>Details</strong>
                                </a>
                            </li>
                            <li class="active" role="presentation">
                                <a href="#tab-pane-validator-results-events-{$id}" aria-controls="tab-pane-validator-results-events-{$id}"
                                    data-toggle="tab" role="tab">
                                    <xsl:call-template name="icon">
                                        <xsl:with-param name="name" select="'comments-o'"/>
                                    </xsl:call-template>
                                    <strong>Events</strong>
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div id="tab-pane-validator-results-details-{$id}" class="tab-pane" role="tabpanel">
                                <ul>
                                    <li>
                                        <xsl:call-template name="prop">
                                            <xsl:with-param name="name" select="'ID'"/>
                                            <xsl:with-param name="value" select="$id"/>
                                        </xsl:call-template>
                                    </li>
                                    <li>
                                        <xsl:call-template name="prop">
                                            <xsl:with-param name="name" select="'Submitted'"/>
                                            <xsl:with-param name="value" select="$formattedSubmittedTimestamp"/>
                                        </xsl:call-template>
                                    </li>
                                    <li>
                                        <xsl:call-template name="prop">
                                            <xsl:with-param name="name" select="'Processed'"/>
                                            <xsl:with-param name="value" select="validate:format-timestamp(validate:processedTimestamp/text())"/>
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
                                                    <xsl:with-param name="value" select="$docFileName"/>
                                                </xsl:call-template>
                                            </li>
                                            <li>
                                                <xsl:call-template name="prop">
                                                    <xsl:with-param name="name" select="'Hash (SHA-512; Base64 Encoded)'"/>
                                                    <xsl:with-param name="value">
                                                        <xsl:if test="exists($doc/validate:hash)">
                                                            <xsl:value-of
                                                                select="xsd:string(xsd:base64Binary($doc/validate:hash/text()))"/>
                                                        </xsl:if>
                                                    </xsl:with-param>
                                                </xsl:call-template>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div id="tab-pane-validator-results-events-{$id}" class="active tab-pane" role="tabpanel">
                                <table class="table table-bordered table-condensed table-hover">
                                    <caption>
                                        <ul>
                                            <li>
                                                <xsl:call-template name="prop">
                                                    <xsl:with-param name="labelIconName" select="'asterisk'"/>
                                                    <xsl:with-param name="name" select="'All'"/>
                                                    <xsl:with-param name="value" select="concat($numEvents, ' of ', $numEvents, ' (0 Filtered)')"/>
                                                </xsl:call-template>
                                            </li>
                                            <li>
                                                <xsl:call-template name="prop">
                                                    <xsl:with-param name="labelClassNames" select="'text-info'"/>
                                                    <xsl:with-param name="labelIconName" select="'info-circle'"/>
                                                    <xsl:with-param name="name" select="'Information'"/>
                                                    <xsl:with-param name="value" select="concat($numInfoEvents, ' of ', $numInfoEvents, ' (0 Filtered)')"/>
                                                </xsl:call-template>
                                            </li>
                                            <li>
                                                <xsl:call-template name="prop">
                                                    <xsl:with-param name="labelClassNames" select="'text-warning'"/>
                                                    <xsl:with-param name="labelIconName" select="'exclamation-circle'"/>
                                                    <xsl:with-param name="name" select="'Warnings'"/>
                                                    <xsl:with-param name="value" select="concat($numWarnEvents, ' of ', $numWarnEvents, ' (0 Filtered)')"/>
                                                </xsl:call-template>
                                            </li>
                                            <li>
                                                <xsl:call-template name="prop">
                                                    <xsl:with-param name="labelClassNames" select="'text-danger'"/>
                                                    <xsl:with-param name="labelIconName" select="'times-circle'"/>
                                                    <xsl:with-param name="name" select="'Errors'"/>
                                                    <xsl:with-param name="value" select="concat($numErrorEvents, ' of ', $numErrorEvents, ' (0 Filtered)')"/>
                                                </xsl:call-template>
                                            </li>
                                        </ul>
                                    </caption>
                                    <thead>
                                        <tr>
                                            <th class="filter-false">ID</th>
                                            <th>Status</th>
                                            <th>Level</th>
                                            <th data-filter-label="Line #">Location</th>
                                            <th class="filter-false">Expression</th>
                                            <th data-filter-label="ID">Schema</th>
                                            <th data-filter-label="ID">Pattern</th>
                                            <th data-filter-label="ID">Rule</th>
                                            <th data-filter-label="ID">Assertion</th>
                                            <th data-filter-label="ID">Value Set</th>
                                            <th data-filter-label="ID">Code System</th>
                                            <th data-filter-label="ID">Code</th>
                                            <th class="filter-false">Description</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <xsl:for-each select="validate:results/validate:events/validate:event">
                                            <xsl:variable name="eventLevel" select="validate:level/text()"/>
                                            <xsl:variable name="infoEventLevel" select="$eventLevel = 'INFO'"/>
                                            <xsl:variable name="eventLevelClassName">
                                                <xsl:choose>
                                                    <xsl:when test="$infoEventLevel">info</xsl:when>
                                                    <xsl:when test="$eventLevel = 'WARN'">warning</xsl:when>
                                                    <xsl:when test="$eventLevel = 'ERROR'">danger</xsl:when>
                                                    <xsl:otherwise>default</xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:variable>
                                            <xsl:variable name="eventStatus" select="xsd:boolean(validate:status/text())"/>
                                            <xsl:variable name="eventClassName">
                                                <xsl:choose>
                                                    <xsl:when test="$eventStatus and not($infoEventLevel)">success</xsl:when>
                                                    <xsl:otherwise>
                                                        <xsl:value-of select="$eventLevelClassName"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:variable>
                                            <tr class="{$eventClassName}" data-status="{$eventStatus}">
                                                <td>
                                                    <xsl:call-template name="propValue">
                                                        <xsl:with-param name="value" select="validate:id/text()"/>
                                                    </xsl:call-template>
                                                </td>
                                                <td>
                                                    <xsl:call-template name="propValue">
                                                        <xsl:with-param name="value">
                                                            <xsl:choose>
                                                                <xsl:when test="$eventStatus">Pass</xsl:when>
                                                                <xsl:otherwise>Fail</xsl:otherwise>
                                                            </xsl:choose>
                                                        </xsl:with-param>
                                                    </xsl:call-template>
                                                </td>
                                                <td class="text-{$eventLevelClassName}">
                                                    <xsl:call-template name="propValue">
                                                        <xsl:with-param name="value" select="validate:level/text()"/>
                                                    </xsl:call-template>
                                                </td>
                                                <td>
                                                    <xsl:choose>
                                                        <xsl:when test="exists(validate:location)">
                                                            <ul>
                                                                <li>
                                                                    <xsl:call-template name="prop">
                                                                        <xsl:with-param name="name" select="'Node Expression'"/>
                                                                        <xsl:with-param name="value">
                                                                            <xsl:if test="exists(validate:location/validate:nodeExpression)">
                                                                                <xsl:value-of select="validate:location/validate:nodeExpression/text()"/>
                                                                            </xsl:if>
                                                                        </xsl:with-param>
                                                                        <xsl:with-param name="valueContainerTagName" select="'pre'"/>
                                                                        <xsl:with-param name="valueNormalizeWhitespace" select="false()"/>
                                                                        <xsl:with-param name="valueSortKey" select="false()"/>
                                                                    </xsl:call-template>
                                                                </li>
                                                                <li>
                                                                    <xsl:call-template name="prop">
                                                                        <xsl:with-param name="name" select="'Line #'"/>
                                                                        <xsl:with-param name="value">
                                                                            <xsl:if test="exists(validate:location/validate:lineNumber)">
                                                                                <xsl:value-of select="validate:location/validate:lineNumber/text()"/>
                                                                            </xsl:if>
                                                                        </xsl:with-param>
                                                                    </xsl:call-template>
                                                                </li>
                                                                <li>
                                                                    <xsl:call-template name="prop">
                                                                        <xsl:with-param name="name" select="'Column #'"/>
                                                                        <xsl:with-param name="value">
                                                                            <xsl:if test="exists(validate:location/validate:columnNumber)">
                                                                                <xsl:value-of select="validate:location/validate:columnNumber/text()"/>
                                                                            </xsl:if>
                                                                        </xsl:with-param>
                                                                        <xsl:with-param name="valueSortKey" select="false()"/>
                                                                    </xsl:call-template>
                                                                </li>
                                                            </ul>
                                                        </xsl:when>
                                                        <xsl:otherwise><em data-sort-key="">None</em></xsl:otherwise>
                                                    </xsl:choose>
                                                </td>
                                                <td>
                                                    <ul>
                                                        <li>
                                                            <xsl:call-template name="prop">
                                                                <xsl:with-param name="name" select="'Context Expression'"/>
                                                                <xsl:with-param name="value">
                                                                    <xsl:if test="exists(validate:contextExpression)">
                                                                        <xsl:value-of select="validate:contextExpression/text()"/>
                                                                    </xsl:if>
                                                                </xsl:with-param>
                                                                <xsl:with-param name="valueContainerTagName" select="'pre'"/>
                                                                <xsl:with-param name="valueNormalizeWhitespace" select="false()"/>
                                                                <xsl:with-param name="valueSortKey" select="false()"/>
                                                            </xsl:call-template>
                                                        </li>
                                                        <li>
                                                            <xsl:call-template name="prop">
                                                                <xsl:with-param name="name" select="'Test Expression'"/>
                                                                <xsl:with-param name="value">
                                                                    <xsl:if test="exists(validate:testExpression)">
                                                                        <xsl:value-of select="validate:testExpression/text()"/>
                                                                    </xsl:if>
                                                                </xsl:with-param>
                                                                <xsl:with-param name="valueContainerTagName" select="'pre'"/>
                                                                <xsl:with-param name="valueNormalizeWhitespace" select="false()"/>
                                                            </xsl:call-template>
                                                        </li>
                                                    </ul>
                                                </td>
                                                <td>
                                                    <xsl:call-template name="component">
                                                        <xsl:with-param name="elem" select="validate:schema"/>
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
                                                    <xsl:call-template name="matchedComponent">
                                                        <xsl:with-param name="actualElem" select="validate:valueSet"/>
                                                        <xsl:with-param name="expectedElems" select="validate:expectedValueSets/validate:expectedValueSet"/>
                                                    </xsl:call-template>
                                                </td>
                                                <td>
                                                    <xsl:call-template name="matchedComponent">
                                                        <xsl:with-param name="actualElem" select="validate:codeSystem"/>
                                                        <xsl:with-param name="expectedElems" select="validate:expectedCodeSystems/validate:expectedCodeSystem"/>
                                                    </xsl:call-template>
                                                </td>
                                                <td>
                                                    <xsl:call-template name="matchedComponent">
                                                        <xsl:with-param name="actualElem" select="validate:code"/>
                                                        <xsl:with-param name="expectedElems" select="validate:expectedCodes/validate:expectedCode"/>
                                                    </xsl:call-template>
                                                </td>
                                                <td>
                                                    <xsl:call-template name="propValue">
                                                        <xsl:with-param name="containerTagName" select="'pre'"/>
                                                        <xsl:with-param name="normalizeWhitespace" select="false()"/>
                                                        <xsl:with-param name="value">
                                                            <xsl:if test="exists(validate:description)">
                                                                <xsl:value-of select="validate:description/text()"/>
                                                            </xsl:if>
                                                        </xsl:with-param>
                                                    </xsl:call-template>
                                                </td>
                                            </tr>
                                        </xsl:for-each>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>