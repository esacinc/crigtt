(function ($) {
    //====================================================================================================
    // NAMESPACES
    //====================================================================================================
    $.extend($, {
        "crigtt": {}
    });
    
    $.extend($.crigtt, {
        "DATE_TIME_ZONE_PATTERN": /\(([^\)]+)\)$/,
        
        "DISPLAY_DATE_FORMAT": "YYYY-MM-DD HH:mm:ss ZZ",
        
        "buildValidatorResultPanelElement": function (resp) {
            var req = resp.request;
            var reqId = req.id;
            var reqSubmissionTimestamp = $.crigtt.formatTimestamp(req.submissionTimestamp);
            var reqDoc = req.document;
            var respStatus = resp.status;
            var respSchemas = resp.schemas;
            var respEvents = resp.events;
            var panelHeadingElemId = "panel-heading-validator-result-" + reqId;
            var panelCollapseElemId = "panel-collapse-validator-result-" + reqId;
            var panelReqTabPaneElemId = "tab-pane-validator-result-req-" + reqId;
            var panelSchemasTabPaneElemId = "tab-pane-validator-result-schemas-" + reqId;
            var panelEventsTabPaneElemId = "tab-pane-validator-result-events-" + reqId;
            
            var panelElem = $("<div/>", {
                "class": "panel panel-" + (respStatus ? "success" : "danger"),
                "id": "panel-validator-result-" + reqId
            });
            
            var panelHeadingElem = $("<div/>", {
                "class": "panel-heading",
                "id": panelHeadingElemId,
                "role": "tab"
            });
            panelElem.append(panelHeadingElem);
            
            var panelTitleElem = $("<div/>", {
                "class": "panel-title"
            }).append(
                $("<a/>", {
                    "aria-controls": panelCollapseElemId,
                    "aria-expanded": true,
                    "data-parent": "#panel-group-validator-results",
                    "data-toggle": "collapse",
                    "href": "#" + panelCollapseElemId
                }).append(
                    $("<span/>").append($("<i/>", {
                        "class": "fa fa-fw fa-" + (respStatus ? "check" : "times")
                    })),
                    $("<span/>").append(
                        $("<strong/>").text("ID"), ": " + reqId, $("<br/>"),
                        $("<strong/>").text("Submitted"), ": " + reqSubmissionTimestamp
                    )
                )
            );
            panelHeadingElem.append(panelTitleElem);
            
            var panelCollapseElem = $("<div/>", {
                "aria-labelledby": panelHeadingElemId,
                "class": "collapse in panel-collapse",
                "id": panelCollapseElemId,
                "role": "tabpanel"
            });
            panelElem.append(panelCollapseElem);
            
            var panelBodyElem = $("<div/>", {
                "class": "panel-body"
            });
            panelCollapseElem.append(panelBodyElem);
            
            var panelContentElem = $("<div/>", {
                "role": "tabpanel"
            });
            panelBodyElem.append(panelContentElem);
            
            var panelTabsElem = $("<ul/>", {
                "class": "nav nav-tabs",
                "role": "tablist"
            });
            panelContentElem.append(panelTabsElem);
            
            var panelReqTabElem = $("<li/>", {
                "role": "presentation"
            }).append(
                $("<a/>", {
                    "aria-controls": panelReqTabPaneElemId,
                    "data-toggle": "tab",
                    "href": "#" + panelReqTabPaneElemId,
                    "role": "tab"
                }).append(
                    $("<i/>", {
                        "class": "fa fa-fw fa-share"
                    }),
                    "Request"
                )
            );
            panelTabsElem.append(panelReqTabElem);
            
            var panelSchemasTabElem = $("<li/>", {
                "role": "presentation"
            }).append(
                $("<a/>", {
                    "aria-controls": panelSchemasTabPaneElemId,
                    "data-toggle": "tab",
                    "href": "#" + panelSchemasTabPaneElemId,
                    "role": "tab"
                }).append(
                    $("<i/>", {
                        "class": "fa fa-fw fa-code"
                    }),
                    "Schemas"
                )
            );
            panelTabsElem.append(panelSchemasTabElem);
            
            var panelEventsTabElem = $("<li/>", {
                "class": "active",
                "role": "presentation"
            }).append(
                $("<a/>", {
                    "aria-controls": panelEventsTabPaneElemId,
                    "data-toggle": "tab",
                    "href": "#" + panelEventsTabPaneElemId,
                    "role": "tab"
                }).append(
                    $("<i/>", {
                        "class": "fa fa-fw fa-exclamation"
                    }), "Events"
                )
            );
            panelTabsElem.append(panelEventsTabElem);
            
            var panelTabContentElem = $("<div/>", {
                "class": "tab-content"
            });
            panelContentElem.append(panelTabContentElem);
            
            var panelReqTabPaneElem = $("<div/>", {
                "class": "tab-pane",
                "id": panelReqTabPaneElemId,
                "role": "tabpanel"
            }).append(
                $("<ul/>").append(
                    $("<li/>").append($("<strong/>").text("ID"), ": " + reqId),
                    $("<li/>").append($("<strong/>").text("Submitted"), ": " + reqSubmissionTimestamp),
                    $("<li/>").append($("<strong/>").text("Processed"), ": " + $.crigtt.formatTimestamp(req.processedTimestamp)),
                    $("<li/>").append($("<strong/>").text("Document"), ": ", $("<ul/>").append(
                        $("<li/>").append($("<strong/>").text("File Name"), ": " + reqDoc.fileName),
                        $("<li/>").append($("<strong/>").text("Hash (SHA-512)"), ": " + reqDoc.hash)
                    ))
                )
            );
            panelTabContentElem.append(panelReqTabPaneElem);
            
            var panelSchemasTabPaneElem = $("<div/>", {
                "class": "tab-pane",
                "id": panelSchemasTabPaneElemId,
                "role": "tabpanel"
            })
            // TEMP: dev
            /*.append(
                $.map(respSchemas, function (respSchema, respSchemaId) {
                    var respSchemaDisplayName = respSchema.displayName;
                    
                    var panelSchemaElem = $("<div/>").append(
                        $("<h1/>").text(respSchemaDisplayName)
                        $("<")
                    );
                    
                    return panelSchemaElem;
                })
            )*/;
            panelTabContentElem.append(panelSchemasTabPaneElem);
            
            var panelEventsTabPaneElem = $("<div/>", {
                "class": "active tab-pane",
                "id": panelEventsTabPaneElemId,
                "role": "tabpanel"
            }).append(
                $("<table/>", {
                    "class": "table table-bordered table-condensed table-hover"
                }).append(
                    $("<thead/>").append(
                        $("<th/>").text("Status"),
                        $("<th/>").text("Schema"),
                        $("<th/>").text("Pattern"),
                        $("<th/>").text("Rule"),
                        $("<th/>").text("Assertion"),
                        $("<th/>").text("Level"),
                        $("<th/>").text("Location"),
                        $("<th/>").text("Description")
                    ),
                    $("<tbody/>").append(
                        $.map(respEvents, function (respEvent) {
                            var respEventStatus = respEvent.status;
                            var respEventLevel = respEvent.level;
                            var respEventLoc = respEvent.location;
                            var respEventSchemaId = respEvent.schema;
                            var respEventAssertions = respSchemas[respEventSchemaId].assertions;
                            var respEventAssertionId = respEvent.assertion;
                            
                            var respEventLevelClassName = "default";
                            
                            switch (respEventLevel) {
                                case "ERROR":
                                    respEventLevelClassName = "danger";
                                    break;
                                
                                case "WARN":
                                    respEventLevelClassName = "warning";
                                    break;
                                
                                case "INFO":
                                    respEventLevelClassName = "info";
                                    break;
                            }
                            
                            return $("<tr/>", {
                                "class": (respEventStatus ? "success" : respEventLevelClassName)
                            }).append(
                                $("<td/>").text((respEventStatus ? "Pass" : "Fail")),
                                $("<td/>").text(respEventSchemaId),
                                $("<td/>").text(respEvent.pattern),
                                $("<td/>").text(respEvent.rule),
                                $("<td/>").text(respEventAssertionId),
                                $("<td/>", {
                                    "class": "text-" + respEventLevelClassName
                                }).text(respEventLevel),
                                $("<td/>").append(
                                    $("<ul/>").append(
                                        $("<li/>").append($("<strong/>").text("Line #"), ": " + respEventLoc.lineNumber),
                                        $("<li/>").append($("<strong/>").text("Column #"), ": " + respEventLoc.columnNumber)
                                    )
                                ),
                                $("<td/>").text(respEventAssertions[respEventAssertionId].text)
                            );
                        })
                    )
                )
            );
            panelTabContentElem.append(panelEventsTabPaneElem);
            
            return panelElem;
        },
        
        "formatTimestamp": function (timestamp) {
            var timestampDate = new Date(timestamp);
            var timestampTimeZoneMatches = $.crigtt.DATE_TIME_ZONE_PATTERN.exec(timestampDate.toString());
            
            return moment(timestampDate).format($.crigtt.DISPLAY_DATE_FORMAT) + (timestampTimeZoneMatches ? (" " + timestampTimeZoneMatches[1]) : "");
        }
    });
    
    //====================================================================================================
    // EVENT HANDLERS
    //====================================================================================================
    $(window).load(function () {
        var contentTabsElem = $("div#content-tabs");
        var homeContentTabElem = $("div#content-tab-home", contentTabsElem);
        var validatorContentTabElem = $("div#content-tab-validator", contentTabsElem);
        var validatorFormElem = $("form#form-validator", validatorContentTabElem);
        var validatorResultsEmptyWellElem = $("div#well-validator-results-empty", validatorContentTabElem);
        var validatorResultsPanelGroupElem = $("div#panel-group-validator-results", validatorContentTabElem);

        $("input#input-file-doc", validatorFormElem).change(function () {
            var fileDocInputElem = $(this);

            $("input#input-file-doc-display", fileDocInputElem.parents("div.input-group")).val(fileDocInputElem.val());
        });
        
        validatorFormElem.submit(function (event) {
            var validatorFormElem = $(this);
            
            $.ajax({
                "cache": false,
                "contentType": false,
                "data": new FormData(this),
                "dataType": "json",
                "error": function (req, status, error) {
                    // TEMP: dev
                    console.log(status, error);
                },
                "mimeType": validatorFormElem.attr("enctype"),
                "processData": false,
                "success": function (data) {
                    $("div.panel div.panel-collapse", validatorResultsPanelGroupElem).collapse("hide");
                    
                    validatorResultsPanelGroupElem.prepend($.crigtt.buildValidatorResultPanelElement(data));
                    
                    validatorResultsEmptyWellElem.hide();
                    validatorResultsPanelGroupElem.show();
                },
                "type": validatorFormElem.attr("method"),
                "url": validatorFormElem.attr("action")
            });
            
            event.preventDefault();
        });
    });
}(jQuery));
