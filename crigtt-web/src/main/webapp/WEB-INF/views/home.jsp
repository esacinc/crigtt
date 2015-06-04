<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="spring-form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@page contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<spring:url var="urlBase" value="/" scope="request"/>
<spring:url var="urlStatic" value="/static" scope="request"/>
<spring:url var="urlStaticImages" value="/static/images" scope="request"/>
<spring:url var="urlStaticScripts" value="/static/scripts" scope="request"/>
<spring:url var="urlStaticStyles" value="/static/styles" scope="request"/>
<spring:url var="urlWebjars" value="/webjars" scope="request"/>
<spring:url var="urlWebjarsBootstrap" value="/webjars/bootstrap/3.3.4" scope="request"/>
<spring:url var="urlWebjarsFontAwesome" value="/webjars/font-awesome/4.3.0" scope="request"/>
<spring:url var="urlWebjarsJquery" value="/webjars/jquery/2.1.4" scope="request"/>
<spring:url var="urlWebjarsJqueryUi" value="/webjars/jquery-ui/1.11.4" scope="request"/>
<spring:url var="urlWebjarsJqueryUiThemes" value="/webjars/jquery-ui-themes/1.11.4" scope="request"/>
<spring:url var="urlWebjarsMoment" value="/webjars/moment/2.10.3" scope="request"/>
<spring:url var="urlService" value="/service" scope="request"/>
<spring:url var="urlServiceValidator" value="/service/validator" scope="request"/>
<spring:url var="urlServiceValidatorValidate" value="/service/validator/validate" scope="request"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
        <link type="text/css" rel="stylesheet" href="${urlWebjarsJqueryUiThemes}/smoothness/jquery-ui.min.css"/>
        <link type="text/css" rel="stylesheet" href="${urlWebjarsBootstrap}/css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="${urlWebjarsFontAwesome}/css/font-awesome.min.css"/>
        <link type="text/css" rel="stylesheet" href="${urlStaticStyles}/crigtt.css"/>
        <script type="text/javascript" src="${urlWebjarsJquery}/jquery.min.js"></script>
        <script type="text/javascript" src="${urlWebjarsJqueryUi}/jquery-ui.min.js"></script>
        <script type="text/javascript" src="${urlWebjarsBootstrap}/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${urlWebjarsMoment}/min/moment.min.js"></script>
        <script type="text/javascript" src="${urlStaticScripts}/crigtt.js"></script>
        <title><spring:message code="crigtt.msg.title.home"/></title>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">
                        <strong><spring:message code="crigtt.msg.header.home"/></strong>
                    </a>
                </div>
                <ul class="nav navbar-nav nav-tabs" role="tablist">
                    <li class="active" role="presentation">
                        <a href="#content-tab-home" aria-controls="content-tab-home" role="tab" data-toggle="tab">
                            <i class="fa fa-home"></i>
                            <strong>Home</strong>
                        </a>
                    </li>
                    <li role="presentation">
                        <a href="#content-tab-validator" aria-controls="content-tab-validator" role="tab" data-toggle="tab">
                            <i class="fa fa-check-circle-o"></i>
                            <strong>Validator</strong>
                        </a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a class="link" data-toggle="dropdown">
                            <i class="fa fa-fw fa-gears"></i>
                            <strong>About</strong>
                            <span class="fa fa-fw fa-caret-down"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li role="presentation">
                                <a role="menuitem" tabindex="-1" target="_blank" href="https://github.com/esacinc/crigtt">
                                    <i class="fa fa-fw fa-github"></i>
                                    GitHub Repository
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div id="content" class="container-fluid">
            <div id="content-tabs" class="tab-content">
                <div id="content-tab-home" class="tab-pane active" role="tabpanel">
                    <!-- TODO: implement -->
                </div>
                <div id="content-tab-validator" class="tab-pane" role="tabpanel">
                    <h1>
                        <i class="fa fa-fw fa-check-circle-o"></i>
                        Submit
                    </h1>
                    <form id="form-validator" name="form-validator" action="${urlServiceValidatorValidate}" enctype="multipart/form-data" method="post">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-btn">
                                    <span class="btn btn-default btn-file">
                                        <i class="fa fa-fw fa-file-code-o"></i>
                                        Select File
                                        <input id="input-file-doc" name="documentFile" type="file"/>
                                    </span>
                                </span>
                                <input id="input-file-doc-display" class="form-control" type="text" readonly="readonly"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="btn-group btn-group-sm">
                                <button class="btn btn-default form-control" type="submit" data-toggle="tooltip" data-placement="top">
                                    <i class="fa fa-fw fa-upload"></i>
                                    Upload
                                </button>
                            </div>
                        </div>
                    </form>
                    <h1>
                        <i class="fa fa-fw fa-table"></i>
                        Results
                    </h1>
                    <div id="well-validator-results-empty" class="text-muted well well-sm">
                        <i class="fa fa-fw fa-circle-o"></i>
                        <strong><em>None</em></strong>
                    </div>
                    <div id="panel-group-validator-results" class="panel-group" aria-multiselectable="true" role="tablist"></div>
                </div>
            </div>
        </div>
    </body>
</html>