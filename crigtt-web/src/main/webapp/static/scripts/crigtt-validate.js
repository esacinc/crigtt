(function ($) {
    //====================================================================================================
    // CLASS: VALIDATOR LEVELS
    //====================================================================================================
    $.extend($.crigtt.validate.ValidatorLevel.INFO.value, {
        "displayName": "Information"
    });
    
    $.extend($.crigtt.validate.ValidatorLevel.WARN.value, {
        "displayName": "Warning"
    });
    
    $.extend($.crigtt.validate.ValidatorLevel.ERROR.value, {
        "displayName": "Error"
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
        "VALIDATE_DATA_DATA_ENTRY_NAME": "crigtt.validate.data"
    });
    
    $.extend($.crigtt.validate.Validator.prototype, {
        "formElem": undefined,
        
        "resultPanel": function (respElem) {
            var resultsEmptyWellElem = $("div#well-validator-results-empty");
            var panelGroupElem = $("div#panel-group-validator-results");
            var panelHeadingElem = respElem.find("div.panel-heading");
            var panelCollapseElem = respElem.find("div.panel-collapse");
            var panelEventsTabPaneElem = respElem.find("div.panel-body div.tab-content div.tab-pane").eq(1);
            var panelEventsTableElem = panelEventsTabPaneElem.find("table.table");
            
            panelHeadingElem.click($.proxy(function (event) {
                var target = $(event.target);
                
                if (target.hasClass("panel-heading") || target.hasClass("panel-title")) {
                    panelCollapseElem.collapse("toggle");
                }
            }, this));
            
            panelHeadingElem.find("div.panel-title button.close").click($.proxy(function () {
                respElem.remove();
                
                if (panelGroupElem.find("div.alert, div.panel").length == 0) {
                    resultsEmptyWellElem.show();
                    
                    panelGroupElem.hide();
                }
            }, this));
            
            panelHeadingElem.find("button.btn-download").mousedown($.proxy(function (event) {
                var mouseButtonId = event.which;
                var middleMouseButton = (mouseButtonId == 2);
                
                if ((mouseButtonId != 1) && !middleMouseButton) {
                    return;
                }
                
                event.preventDefault();
                
                this.downloadResults.apply(this, [
                    respElem,
                    $.crigtt.validate.ValidatorRenderType[$(event.delegateTarget).attr("data-type").toUpperCase()],
                    middleMouseButton
                ]);
            }, this));
            
            var panelEventsTableFilterFormatters = {};
            
            panelEventsTableElem.find("th").each(function (panelEventsTableHeaderIndex, panelEventsTableHeaderElem) {
                if (!(panelEventsTableHeaderElem = $(panelEventsTableHeaderElem)).hasClass("filter-false")) {
                    var panelEventsTableFilterLabel = panelEventsTableHeaderElem.attr("data-filter-label");
                    
                    panelEventsTableFilterFormatters[panelEventsTableHeaderIndex] = function (cell, index) {
                        return $.tablesorter.filterFormatter.select2(cell, index, {
                            "cellText": panelEventsTableFilterLabel,
                            "match": false,
                            "placeholder": "Select Filters",
                            "width": ((panelEventsTableFilterLabel ? 80 : 100) + "%")
                        });
                    };
                }
            });
            
            panelEventsTableElem.tablesorter({
                "sortList": [
                    [0, 0]
                ],
                "textExtraction": function (tableDataElem) {
                    var sortKeyElem = $(tableDataElem).find("*[data-sort-key]").eq(0);
                    var sortKeyValue = sortKeyElem.attr("data-sort-key");
                    
                    return ((sortKeyValue == String(true)) ? sortKeyElem.text() : String.EMPTY);
                },
                "textSorter": function (sortKeyValue1, sortKeyValue2, sortDirection, sortColumnIndex, tableElem) {
                    if (sortColumnIndex != 0) {
                        return $.tablesorter.sortNatural(sortKeyValue1, sortKeyValue2, sortDirection, sortColumnIndex, tableElem);
                    }
                    
                    var passValue1 = (sortKeyValue1 == "Pass"), passValue2 = (sortKeyValue2 == "Pass");
                    
                    if (passValue1 && passValue2) {
                        return 0;
                    } else if (passValue1) {
                        return 1;
                    } else if (passValue2) {
                        return -1;
                    } else {
                        var levels = $.keys($.crigtt.validate.ValidatorLevel);
                        levels.reverse();
                        
                        return $.tablesorter.sortNumeric(levels.indexOf(sortKeyValue1), levels.indexOf(sortKeyValue2));
                    }
                },
                "widgetOptions": {
                    "filter_formatter": panelEventsTableFilterFormatters,
                    "stickyHeaders_attachTo": panelEventsTabPaneElem
                }
            }).on("filterEnd", $.proxy(function () {
                var numEvents = 0;
                var numLevelEvents = {};
                var numFilteredEvents = 0;
                var numFilteredLevelEvents = {};
                
                $.properties($.crigtt.validate.ValidatorLevel, function (levelName) {
                    numLevelEvents[levelName] = 0;
                    numFilteredLevelEvents[levelName] = 0;
                });
                
                var panelEventsTableElems = panelEventsTabPaneElem.find("table.table");
                var panelEventTotalsListElems = panelEventsTableElems.find("caption ul");
                
                panelEventsTableElems.find("tbody tr").each(function (panelEventsTableRowIndex, panelEventsTableRowElem) {
                    var eventStatus = ((panelEventsTableRowElem = $(panelEventsTableRowElem)).attr("data-status") == String(true));
                    var eventLevel = panelEventsTableRowElem.attr("data-level");
                    
                    numEvents++;
                    
                    if (!eventStatus) {
                        numLevelEvents[eventLevel]++;
                    }
                    
                    if (panelEventsTableRowElem.hasClass("filtered")) {
                        numFilteredEvents++;
                        
                        if (!eventStatus) {
                            numFilteredLevelEvents[eventLevel]++;
                        }
                    }
                });
                
                var eventTotals = [];
                
                $.properties($.crigtt.validate.ValidatorLevel, function (levelName) {
                    eventTotals.push([ numFilteredLevelEvents[levelName], numLevelEvents[levelName] ]);
                });
                
                eventTotals.push([ numFilteredEvents, numEvents ]);
                
                eventTotals.reverse();
                
                $.each(eventTotals, function (panelEventTotalSpanIndex, eventTotals) {
                    panelEventTotalsListElems.each(function (panelEventTotalsListIndex, panelEventTotalsListElem) {
                        $(panelEventTotalsListElem).find("li span span").eq(panelEventTotalSpanIndex)
                            .text(((eventTotals[1] - eventTotals[0]) + " of " + eventTotals[1] + " (" + eventTotals[0] + " Filtered)"));
                    });
                });
            }, this));
            
            panelEventsTableElem.find("tr.tablesorter-filter-row td label").each(function (panelEventsTableFilterLabelIndex, panelEventsTableFilterLabelElem) {
                var panelEventsTableFilterLabelContent = (panelEventsTableFilterLabelElem = $(panelEventsTableFilterLabelElem)).text();
                
                panelEventsTableFilterLabelElem.empty();
                panelEventsTableFilterLabelElem.append($("<strong/>").text(panelEventsTableFilterLabelContent), ": ");
            });
            
            return respElem;
        },
        
        "downloadResults": function (panelElem, renderType, asWindow) {
            this.validate(renderType, {
                "data": panelElem.data($.crigtt.validate.Validator.VALIDATE_DATA_DATA_ENTRY_NAME),
                "process": $.proxy(function (status, resp, respFileName) {
                    if (!status) {
                        panelElem.parent().prepend($($.parseHTML(resp)[0]));
                        
                        return;
                    }
                    
                    var blob = new Blob([ resp ], { "type": renderType.value.contentType });
                    
                    if (asWindow) {
                        open(URL.createObjectURL(blob));
                    } else {
                        saveAs(blob, respFileName);
                    }
                }, this)
            });
        },
        
        "validate": function (renderType, opts, queryParams) {
            var defaultQueryParams = {};
            defaultQueryParams[$.crigtt.validate.ValidatorParameters.FORMAT_NAME] = true;
            defaultQueryParams[$.crigtt.validate.ValidatorParameters.TIME_ZONE_NAME] = new Date().getTimeZoneOffsetString();
            
            var queryStr = String.EMPTY;
            
            $.properties($.extend(defaultQueryParams, (queryParams || {})), function (queryParamName, queryParamValue) {
                queryStr += ((queryStr ? "&" : String.EMPTY) + encodeURIComponent(queryParamName) + "=" + encodeURIComponent(queryParamValue));
            });
            
            $.ajax((opts = $.extend({
                "accepts": renderType.value.contentType,
                "cache": false,
                "contentType": false,
                "dataType": "text",
                "error": function (req) {
                    opts.process(false, req.responseText, req.getResponseHeader($.crigtt.validate.ValidatorHeaders.RESP_FILE_NAME_NAME));
                },
                "mimeType": this.formElem.attr("enctype"),
                "processData": false,
                "success": function (resp, respHttpStatusText, req) {
                    opts.process(true, req.responseText, req.getResponseHeader($.crigtt.validate.ValidatorHeaders.RESP_FILE_NAME_NAME));
                },
                "type": this.formElem.attr("method"),
                "url": (this.formElem.attr("action") + "." + renderType.value.extension + "?" + queryStr)
            }, opts)));
        }
    });
}(jQuery));
