(function ($) {
    //====================================================================================================
    // NAMESPACE: VALIDATION
    //====================================================================================================
    $.extend($.crigtt, {
        "validate": {}
    });
    
    //====================================================================================================
    // CLASS: VALIDATOR CONTENT TYPE ITEM
    //====================================================================================================
    $.extend($.crigtt.validate, {
        "ValidatorContentTypeItem": function (dataType, mediaType) {
            this.dataType = dataType;
            this.mediaType = mediaType;
        }
    });
    
    $.extend($.crigtt.validate.ValidatorContentTypeItem.prototype, {
        "dataType": undefined,
        "mediaType": undefined
    });
    
    //====================================================================================================
    // ENUM: VALIDATOR CONTENT TYPE
    //====================================================================================================
    $.extend($.crigtt.validate, {
        "ValidatorContentType": new Enum({
            "JSON": new $.crigtt.validate.ValidatorContentTypeItem("json", "application/json"),
            "XML": new $.crigtt.validate.ValidatorContentTypeItem("xml", "text/xml")
        })
    });
    
    //====================================================================================================
    // CLASS: VALIDATOR EVENT LEVEL ITEM
    //====================================================================================================
    $.extend($.crigtt.validate, {
        "ValidatorEventLevelItem": function (uiEventLevel) {
            this.uiEventLevel = uiEventLevel;
        }
    });
    
    $.extend($.crigtt.validate.ValidatorEventLevelItem.prototype, {
        "uiEventLevel": undefined
    });
    
    //====================================================================================================
    // ENUM: VALIDATOR EVENT LEVEL
    //====================================================================================================
    $.extend($.crigtt.validate, {
        "ValidatorEventLevel": new Enum({
            "INFO": new $.crigtt.validate.ValidatorEventLevelItem($.crigtt.ui.UiEventLevel.INFO),
            "WARN": new $.crigtt.validate.ValidatorEventLevelItem($.crigtt.ui.UiEventLevel.WARNING),
            "ERROR": new $.crigtt.validate.ValidatorEventLevelItem($.crigtt.ui.UiEventLevel.DANGER)
        })
    });
    
    //====================================================================================================
    // CLASS: VALIDATOR
    //====================================================================================================
    $.extend($.crigtt.validate, {
        "Validator": function (formElem) {
            this.formElem = formElem;
        }
    });
    
    $.extend($.crigtt.validate.Validator, {
        "CONTENT_TYPE_DATA_ENTRY_NAME": "crigtt.validate.data.contentType",
        "VALIDATE_DATA_DATA_ENTRY_NAME": "crigtt.validate.data.validate.data"
    });
    
    $.extend($.crigtt.validate.Validator.prototype, {
        "formElem": undefined,
        
        "resultErrorAlert": function (error, httpStatus, httpStatusText) {
            return $("<div/>", {
                "class": "alert alert-danger alert-dismissible",
                "role": "alert"
            }).append(
                $.crigtt.ui.closeButton().attr("data-dismiss", "alert"),
                $("<h4/>").append($.crigtt.ui.icon("fa-exclamation-triangle"), " ", $.crigtt.ui.strong("Error")),
                $("<h5/>").append($.crigtt.ui.icon("fa-exchange"), " ", $.crigtt.ui.strong("HTTP Response")),
                $("<ul/>").append(
                    $("<li/>").append($.crigtt.ui.strong("Status Code"), ": " + httpStatus),
                    $("<li/>").append($.crigtt.ui.strong("Status Text"), ": " + httpStatusText)
                ),
                $("<h5/>").append($.crigtt.ui.icon("fa-bolt"), " ", $.crigtt.ui.strong("Exception")),
                ((error && (error.message || error.stackTrace)) ? $("<pre/>").text([ error.message].concat(error.stackTrace).join(String.LF)) : String.EMPTY)
            );
        },
        
        "resultPanel": function (resp) {
            var id = resp.id;
            var submittedTimestamp = $.crigtt.format.timestamp(resp.submittedTimestamp);
            var doc = resp.document;
            var docHash = doc.hash;
            var results = resp.results;
            var events = results.events;
            var status = results.status;
            var panelHeadingElemId = "panel-heading-validator-result-" + id;
            var panelCollapseElemId = "panel-collapse-validator-result-" + id;
            var panelInfoTabPaneElemId = "tab-pane-validator-result-info-" + id;
            var panelEventsTabPaneElemId = "tab-pane-validator-result-events-" + id;
            
            var panelElem = $("<div/>", {
                "class": "panel panel-" + (status ? $.crigtt.ui.UiEventLevel.SUCCESS : $.crigtt.ui.UiEventLevel.DANGER).value.classNameSuffix,
                "id": "panel-validator-result-" + id
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
                    $("<span/>").append($.crigtt.ui.icon("fa-" + (status ? "check" : "times"))),
                    $("<span/>").append(
                        $.crigtt.ui.strong("ID"), ": " + id,
                        $.crigtt.ui.br(),
                        $.crigtt.ui.strong("Submitted"), ": " + submittedTimestamp
                    )
                ),
                $("<span/>").append(
                    $.crigtt.ui.strong("Download"), ": ",
                    $("<button/>", {
                        "class": "btn btn-default"
                    }).data($.crigtt.validate.Validator.CONTENT_TYPE_DATA_ENTRY_NAME, $.crigtt.validate.ValidatorContentType.JSON).append(
                        $.crigtt.ui.icon("fa-file-text-o"), "JSON"
                    ),
                    $("<button/>", {
                        "class": "btn btn-default"
                    }).data($.crigtt.validate.Validator.CONTENT_TYPE_DATA_ENTRY_NAME, $.crigtt.validate.ValidatorContentType.XML).append(
                        $.crigtt.ui.icon("fa-file-code-o"), "XML"
                    )
                ).find("button.btn").click($.proxy(function (event) {
                    this.downloadResults.apply(this, [
                        panelElem,
                        $(event.delegateTarget).data($.crigtt.validate.Validator.CONTENT_TYPE_DATA_ENTRY_NAME)
                    ]);
                }, this)).end(),
                $.crigtt.ui.closeButton().click(function () {
                    var panelElem = $(this).parents("div.panel");
                    var panelGroupElem = panelElem.parents("div.panel-group");
                    
                    panelElem.remove();
                    
                    if (!panelGroupElem.find("div.panel").length) {
                        panelGroupElem.prev("div#well-validator-results-empty").show();
                        
                        panelGroupElem.hide();
                    }
                })
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
            
            var panelInfoTabElem = $("<li/>", {
                "role": "presentation"
            }).append(
                $("<a/>", {
                    "aria-controls": panelInfoTabPaneElemId,
                    "data-toggle": "tab",
                    "href": "#" + panelInfoTabPaneElemId,
                    "role": "tab"
                }).append($.crigtt.ui.icon("fa-info-circle"), String.LF, $.crigtt.ui.strong("Info"))
            );
            
            panelTabsElem.append(panelInfoTabElem);
            
            var panelEventsTabElem = $("<li/>", {
                "class": "active",
                "role": "presentation"
            }).append(
                $("<a/>", {
                    "aria-controls": panelEventsTabPaneElemId,
                    "data-toggle": "tab",
                    "href": "#" + panelEventsTabPaneElemId,
                    "role": "tab"
                }).append($.crigtt.ui.icon("fa-comments-o"), String.LF, $.crigtt.ui.strong("Events"))
            );

            panelTabsElem.append(panelEventsTabElem);
            
            var panelTabContentElem = $("<div/>", {
                "class": "tab-content"
            });
            
            panelContentElem.append(panelTabContentElem);
            
            var panelInfoTabPaneElem = $("<div/>", {
                "class": "tab-pane",
                "id": panelInfoTabPaneElemId,
                "role": "tabpanel"
            }).append(
                $("<ul/>").append(
                    $("<li/>").append($.crigtt.ui.strong("ID"), ": " + id),
                    $("<li/>").append($.crigtt.ui.strong("Submitted"), ": " + submittedTimestamp),
                    $("<li/>").append($.crigtt.ui.strong("Processed"), ": " + $.crigtt.format.timestamp(resp.processedTimestamp)),
                    $("<li/>").append($.crigtt.ui.strong("Document"), ": ",
                        $("<ul/>").append(
                            $("<li/>").append($.crigtt.ui.strong("File Name"), ": " + doc.fileName),
                            $("<li/>").append($.crigtt.ui.strong("Hash (SHA-512)"), ": " + docHash)
                        )
                    )
                )
            );
            
            panelTabContentElem.append(panelInfoTabPaneElem);
            
            var panelEventsTableElem = $("<table/>", {
                "class": "table table-bordered table-condensed table-hover"
            }).append(
                $("<thead/>").append(
                    $("<tr/>").append(
                        $("<th/>").text("ID"),
                        $("<th/>").text("Status"),
                        $("<th/>").text("Level"),
                        $("<th/>").append("Location", $.crigtt.ui.br(), "(Line : Column)"),
                        $("<th/>").text("Test"),
                        $("<th/>").text("Details")
                    )
                ),
                $("<tbody/>").append(
                    $.map(events, function (event) {
                        var eventStatus = event.status;
                        var eventLevel = $.crigtt.validate.ValidatorEventLevel.get(event.level);
                        var eventLoc = event.location;
                        var eventSchema = event.schema;
                        var eventPhase = event.phase;
                        var eventPattern = event.pattern;
                        var eventRule = event.rule;
                        var eventAssertion = event.assertion;
                        var eventValueSet = event.valueSet;
                        var eventCodeSystem = event.codeSystem;
                        var eventCode = event.code;
                        
                        return $("<tr/>", {
                            "class": (eventStatus ? $.crigtt.ui.UiEventLevel.SUCCESS : eventLevel.value.uiEventLevel).value.classNameSuffix
                        }).append(
                            $("<td/>").text(event.id),
                            $("<td/>").text((eventStatus ? "Pass" : "Fail")),
                            $("<td/>", {
                                "class": "text-" + eventLevel.value.uiEventLevel.value.classNameSuffix
                            }).text(eventLevel.key),
                            (eventLoc ? $("<td/>").append((eventLoc.lineNumber + " : " + eventLoc.columnNumber),
                                $("<span/>", {
                                    "class": "hidden popover-data"
                                }).append(
                                    $("<span/>", {
                                        "class": "popover-data-title"
                                    }).append($.crigtt.ui.strong("Location")),
                                    $("<span/>", {
                                        "class": "popover-data-content"
                                    }).append(
                                        $("<ul/>").append(
                                            $("<li/>").append($.crigtt.ui.strong("Node Expression"), ": ", $("<pre/>").text(eventLoc.nodeExpression)),
                                            $("<li/>").append($.crigtt.ui.strong("Line #"), ": ", eventLoc.lineNumber),
                                            $("<li/>").append($.crigtt.ui.strong("Column #"), ": ", eventLoc.columnNumber)
                                        )
                                    )
                                )
                            ) : $("<td/>")),
                            $("<td/>").append($("<pre/>").text(event.testExpression),
                                $("<span/>", {
                                    "class": "hidden popover-data"
                                }).append(
                                    $("<span/>", {
                                        "class": "popover-data-title"
                                    }).append($.crigtt.ui.strong("Test")),
                                    $("<span/>", {
                                        "class": "popover-data-content"
                                    }).append(
                                        $("<ul/>").append(
                                            $("<li/>").append($.crigtt.ui.strong("Context Expression"), ": ", $("<pre/>").text(event.contextExpression)),
                                            $("<li/>").append($.crigtt.ui.strong("Test Expression"), ": ", $("<pre/>").text(event.testExpression))
                                        )
                                    )
                                )
                            ),
                            $("<td/>").append($("<pre/>").text(event.description),
                                $("<span/>", {
                                    "class": "hidden popover-data"
                                }).append(
                                    $("<span/>", {
                                        "class": "popover-data-title"
                                    }).append($.crigtt.ui.strong("Details")),
                                    $("<span/>", {
                                        "class": "popover-data-content"
                                    }).append(
                                        $("<ul/>").append(
                                            (eventSchema ? $("<li/>").append($.crigtt.ui.strong("Schema"), ": ",
                                                $("<ul/>").append(
                                                    $("<li/>").append($.crigtt.ui.strong("ID"), ": " + eventSchema.id),
                                                    $("<li/>").append($.crigtt.ui.strong("Name"), ": " + eventSchema.name)
                                                )
                                            ) : String.EMPTY),
                                            (eventPhase ? $("<li/>").append($.crigtt.ui.strong("Phase"), ": ",
                                                $("<ul/>").append(
                                                    $("<li/>").append($.crigtt.ui.strong("ID"), ": " + eventPhase.id),
                                                    $("<li/>").append($.crigtt.ui.strong("Name"), ": " + eventPhase.name)
                                                )
                                            ) : String.EMPTY),
                                            (eventPattern ? $("<li/>").append($.crigtt.ui.strong("Pattern"), ": ",
                                                $("<ul/>").append(
                                                    $("<li/>").append($.crigtt.ui.strong("ID"), ": " + eventPattern.id),
                                                    $("<li/>").append($.crigtt.ui.strong("Name"), ": " + eventPattern.name)
                                                )
                                            ) : String.EMPTY),
                                            (eventRule ? $("<li/>").append($.crigtt.ui.strong("Rule"), ": ",
                                                $("<ul/>").append(
                                                    $("<li/>").append($.crigtt.ui.strong("ID"), ": " + eventRule.id),
                                                    $("<li/>").append($.crigtt.ui.strong("Name"), ": " + eventRule.name)
                                                )
                                            ) : String.EMPTY),
                                            (eventAssertion ? $("<li/>").append($.crigtt.ui.strong("Assertion"), ": ",
                                                $("<ul/>").append(
                                                    $("<li/>").append($.crigtt.ui.strong("ID"), ": " + eventAssertion.id),
                                                    $("<li/>").append($.crigtt.ui.strong("Name"), ": " + eventAssertion.name)
                                                )
                                            ) : String.EMPTY),
                                            (eventValueSet ? $("<li/>").append($.crigtt.ui.strong("Value Set"), ": ",
                                                $("<ul/>").append(
                                                    $("<li/>").append($.crigtt.ui.strong("ID"), ": " + eventValueSet.id),
                                                    $("<li/>").append($.crigtt.ui.strong("Name"), ": " + eventValueSet.name)
                                                )
                                            ) : String.EMPTY),
                                            (eventCodeSystem ? $("<li/>").append($.crigtt.ui.strong("Code System"), ": ",
                                                $("<ul/>").append(
                                                    $("<li/>").append($.crigtt.ui.strong("ID"), ": " + eventCodeSystem.id),
                                                    $("<li/>").append($.crigtt.ui.strong("Name"), ": " + eventCodeSystem.name)
                                                )
                                            ) : String.EMPTY),
                                            (eventCode ? $("<li/>").append($.crigtt.ui.strong("Code"), ": ",
                                                $("<ul/>").append(
                                                    $("<li/>").append($.crigtt.ui.strong("ID"), ": " + eventCode.id),
                                                    $("<li/>").append($.crigtt.ui.strong("Name"), ": " + eventCode.name)
                                                )
                                            ) : String.EMPTY)
                                        )
                                    )
                                )
                            )
                        ).find("td:has(span.popover-data)").popover({
                            "container": "body",
                            "content": function () {
                                return $(this).find("span.popover-data span.popover-data-content").html();
                            },
                            "html": true,
                            "placement": "auto",
                            "title": function () {
                                return $(this).find("span.popover-data span.popover-data-title").html();
                            }
                        }).end();
                    })
                )
            );

            var panelEventsTabPaneElem = $("<div/>", {
                "class": "active tab-pane",
                "id": panelEventsTabPaneElemId,
                "role": "tabpanel"
            }).append(panelEventsTableElem);
            
            panelEventsTableElem.tablesorter({
                "sortList": [
                    [0, 0]
                ],
                "widgetOptions": {
                    "stickyHeaders_attachTo": panelEventsTabPaneElem
                }
            });
            
            panelTabContentElem.append(panelEventsTabPaneElem);
            
            return panelElem;
        },
        
        "downloadResults": function (panelElem, contentType) {
            this.validate(contentType, {
                "data": panelElem.data($.crigtt.validate.Validator.VALIDATE_DATA_DATA_ENTRY_NAME),
                "process": $.proxy(function (status, resp, httpStatus, httpStatusText) {
                    if (!status) {
                        panelElem.parent().prepend(this.resultErrorAlert.apply(this, [ resp, httpStatus, httpStatusText ]));
                        
                        return;
                    }
                    
                    var blob = new Blob([ ((contentType == $.crigtt.validate.ValidatorContentType.JSON) ? JSON.stringify(resp) : resp) ],
                        { "type": contentType.value.mediaType });
                    
                    open(URL.createObjectURL(blob));
                }, this)
            });
        },
        
        "validate": function (contentType, opts) {
            $.ajax((opts = $.extend({
                "accepts": contentType.value.mediaType,
                "cache": false,
                "contentType": false,
                "dataType": contentType.value.dataType,
                "error": function (req) {
                    var resp = req.responseXML;
                    
                    if (!resp) {
                        resp = req.responseText;
                        
                        if (resp) {
                            resp = JSON.parse(resp);
                        }
                    }
                    
                    opts.process(false, resp, req.status, req.statusText);
                },
                "mimeType": this.formElem.attr("enctype"),
                "processData": false,
                "success": function (resp, respHttpStatusText, req) {
                    opts.process(true, resp, req.status, req.statusText);
                },
                "type": this.formElem.attr("method"),
                "url": this.formElem.attr("action") + "?_type=" + contentType.value.mediaType
            }, opts)));
        }
    });
}(jQuery));
