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
        "ValidatorContentTypeItem": function (dataType, mediaType, ext) {
            this.dataType = dataType;
            this.mediaType = mediaType;
            this.ext = ext;
        }
    });
    
    $.extend($.crigtt.validate.ValidatorContentTypeItem.prototype, {
        "dataType": undefined,
        "mediaType": undefined,
        "ext": undefined
    });
    
    //====================================================================================================
    // ENUM: VALIDATOR CONTENT TYPE
    //====================================================================================================
    $.extend($.crigtt.validate, {
        "ValidatorContentType": new Enum({
            "HTML": new $.crigtt.validate.ValidatorContentTypeItem("html", "text/html", ".html"),
            "JSON": new $.crigtt.validate.ValidatorContentTypeItem("json", "application/json", ".json"),
            "XML": new $.crigtt.validate.ValidatorContentTypeItem("xml", "text/xml", ".xml")
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
        "FILE_NAME_HEADER_NAME": "X-Crigtt-File-Name",
        
        "VALIDATE_DATA_DATA_ENTRY_NAME": "crigtt.validate.data.validate.data"
    });
    
    $.extend($.crigtt.validate.Validator.prototype, {
        "formElem": undefined,
        
        "resultPanel": function (respElem) {
            var resultsEmptyWellElem = $("div#well-validator-results-empty");
            var panelGroupElem = this.formElem.find("div.panel-group");
            var panelCollapseElem = respElem.find("div.panel-collapse");
            var panelEventsTabPaneElem = respElem.find("div.panel-body div.tab-content div.tab-pane").eq(1);
            
            respElem.find("div.panel-heading").click($.proxy(function (event) {
                var target = $(event.target);
                
                if (target.hasClass("panel-heading") || target.hasClass("panel-title")) {
                    panelCollapseElem.collapse("toggle");
                }
            }, this));
            
            respElem.find("div.panel-title button.close").click($.proxy(function () {
                respElem.remove();
                
                if (!panelGroupElem.find("div.panel").length) {
                    resultsEmptyWellElem.show();
                    
                    panelGroupElem.hide();
                }
            }, this));
            
            respElem.find("button.btn-validator-result-download").mousedown($.proxy(function (event) {
                var mouseButtonId = event.which;
                var middleMouseButton = (mouseButtonId == 2);
                
                if ((mouseButtonId != 1) && !middleMouseButton) {
                    return;
                }
                
                event.preventDefault();
                
                this.downloadResults.apply(this, [
                    respElem,
                    $.crigtt.validate.ValidatorContentType.get($(event.delegateTarget).attr("data-download-type").toUpperCase()),
                    middleMouseButton
                ]);
            }, this));
            
            panelEventsTabPaneElem.find("table.table").tablesorter({
                "sortList": [
                    [0, 0]
                ],
                "textExtraction": function (tableDataElem) {
                    var sortKeyElem = $(tableDataElem).find("*[data-sort-key]").eq(0);
                    var sortKeyValue = sortKeyElem.attr("data-sort-key");
                    
                    return ((sortKeyValue == String(true)) ? sortKeyElem.text() : String.EMPTY);
                },
                "widgetOptions": {
                    "stickyHeaders_attachTo": panelEventsTabPaneElem
                }
            });
            
            return respElem;
        },
        
        "downloadResults": function (panelElem, contentType, asWindow) {
            this.validate(contentType, {
                "data": panelElem.data($.crigtt.validate.Validator.VALIDATE_DATA_DATA_ENTRY_NAME),
                "process": $.proxy(function (status, resp, fileName) {
                    if (!status) {
                        panelElem.parent().prepend($($.parseHTML(resp)[0]));
                        
                        return;
                    }
                    
                    var blob = new Blob([ resp ], { "type": contentType.value.mediaType });
                    
                    if (asWindow) {
                        open(URL.createObjectURL(blob));
                    } else {
                        saveAs(blob, fileName);
                    }
                }, this)
            });
        },
        
        "validate": function (contentType, opts) {
            $.ajax((opts = $.extend({
                "accepts": contentType.value.mediaType,
                "cache": false,
                "contentType": false,
                "dataType": "text",
                "error": function (req) {
                    opts.process(false, req.responseText, req.getResponseHeader($.crigtt.validate.Validator.FILE_NAME_HEADER_NAME));
                },
                "mimeType": this.formElem.attr("enctype"),
                "processData": false,
                "success": function (resp, respHttpStatusText, req) {
                    opts.process(true, req.responseText, req.getResponseHeader($.crigtt.validate.Validator.FILE_NAME_HEADER_NAME));
                },
                "type": this.formElem.attr("method"),
                "url": (this.formElem.attr("action") + contentType.value.ext + "?format=true&timeZone=" + new Date().getTimeZoneOffsetString())
            }, opts)));
        }
    });
}(jQuery));
