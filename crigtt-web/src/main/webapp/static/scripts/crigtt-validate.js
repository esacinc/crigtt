(function ($) {
    //====================================================================================================
    // NAMESPACE: VALIDATION
    //====================================================================================================
    $.extend($.crigtt, {
        "validate": {}
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
        "VALIDATE_DATA_DATA_ENTRY_NAME": "crigtt.validate.data.validate.data"
    });
    
    $.extend($.crigtt.validate.Validator.prototype, {
        "formElem": undefined,
        
        "resultPanel": function (respElem) {
            var resultsEmptyWellElem = $("div#well-validator-results-empty");
            var panelGroupElem = this.formElem.find("div.panel-group");
            var panelHeadingElem = respElem.find("div.panel-heading");
            var panelCollapseElem = respElem.find("div.panel-collapse");
            var panelEventsTabPaneElem = respElem.find("div.panel-body div.tab-content div.tab-pane").eq(1);
            var panelEventsTableElem = panelEventsTabPaneElem.find("table.table");
            var panelEventTotalsListElem = panelEventsTableElem.find("caption ul");
            
            panelHeadingElem.click($.proxy(function (event) {
                var target = $(event.target);
                
                if (target.hasClass("panel-heading") || target.hasClass("panel-title")) {
                    panelCollapseElem.collapse("toggle");
                }
            }, this));
            
            panelHeadingElem.find("div.panel-title button.close").click($.proxy(function () {
                respElem.remove();
                
                if (!panelGroupElem.find("div.panel").length) {
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
                    ValidatorRenderType[$(event.delegateTarget).attr("data-type").toUpperCase()],
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
                "widgetOptions": {
                    "filter_formatter": panelEventsTableFilterFormatters,
                    "stickyHeaders_attachTo": panelEventsTabPaneElem
                }
            }).on("filterEnd", $.proxy(function () {
                var numEvents = 0;
                var numLevelEvents = {
                    "INFO": 0,
                    "WARN": 0,
                    "ERROR": 0
                };
                var numFilteredEvents = 0;
                var numFilteredLevelEvents = {
                    "INFO": 0,
                    "WARN": 0,
                    "ERROR": 0
                };
                
                panelEventsTableElem.find("tbody tr").each(function (panelEventsTableRowIndex, panelEventsTableRowElem) {
                    var eventLevel = (panelEventsTableRowElem = $(panelEventsTableRowElem)).find("td span").eq(2).text();
                    
                    numEvents++;
                    numLevelEvents[eventLevel]++;
                    
                    if (panelEventsTableRowElem.hasClass("filtered")) {
                        numFilteredEvents++;
                        numFilteredLevelEvents[eventLevel]++;
                    }
                });
                
                var panelEventTotalSpanElems = panelEventTotalsListElem.find("li span span");
                
                $.each([
                    [ numFilteredEvents, numEvents ],
                    [ numFilteredLevelEvents["INFO"], numLevelEvents["INFO"] ],
                    [ numFilteredLevelEvents["WARN"], numLevelEvents["WARN"] ],
                    [ numFilteredLevelEvents["ERROR"], numLevelEvents["ERROR"] ]
                ], function (panelEventTotalSpanIndex, eventTotals) {
                    panelEventTotalSpanElems.eq(panelEventTotalSpanIndex)
                        .text(((eventTotals[1] - eventTotals[0]) + " of " + eventTotals[1] + " (" + eventTotals[0] + " Filtered)"));
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
        
        "validate": function (renderType, opts) {
            $.ajax((opts = $.extend({
                "accepts": renderType.value.contentType,
                "cache": false,
                "contentType": false,
                "dataType": "text",
                "error": function (req) {
                    opts.process(false, req.responseText, req.getResponseHeader(RESP_FILE_NAME_HEADER_NAME));
                },
                "mimeType": this.formElem.attr("enctype"),
                "processData": false,
                "success": function (resp, respHttpStatusText, req) {
                    opts.process(true, req.responseText, req.getResponseHeader(RESP_FILE_NAME_HEADER_NAME));
                },
                "type": this.formElem.attr("method"),
                "url": (this.formElem.attr("action") + "." + renderType.value.extension + "?format=true&timeZone=" + new Date().getTimeZoneOffsetString())
            }, opts)));
        }
    });
}(jQuery));
