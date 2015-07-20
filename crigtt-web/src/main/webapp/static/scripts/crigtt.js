(function ($) {
    //====================================================================================================
    // EXTENSIONS: STRING
    //====================================================================================================
    $.extend(String, {
        "EMPTY": "",
        "LF": "\n",
        "SPACE": " "
    });
    
    //====================================================================================================
    // EXTENSIONS: DATE
    //====================================================================================================
    $.extend(Date.prototype, {
        "getTimeZoneOffsetString": function () {
            var timeZoneOffset = ((this.getTimezoneOffset() / 60).toPrecision(4) * -100);
            var absoluteTimeZoneOffset = Math.abs(timeZoneOffset);
            var timeZoneOffsetStr = (absoluteTimeZoneOffset).toFixed();
            
            while (timeZoneOffsetStr.length < 4) {
                timeZoneOffsetStr = "0" + timeZoneOffsetStr;
            }
            
            return (((timeZoneOffset >= 0) ? "+" : "-") + timeZoneOffsetStr);
        }
    });
    
    //====================================================================================================
    // EXTENSIONS: JQUERY FUNCTIONS
    //====================================================================================================
    $.extend($.fn, {
        "disable": function () {
            return this.attr("disabled", "disabled");
        },
        
        "isDisabled": function () {
            return (this.attr("disabled") == "disabled");
        },
        
        "enable": function () {
            return this.removeAttr("disabled");
        },
        
        "toggleDisabled": function () {
            return (this.isDisabled() ? this.enable() : this.disable());
        }
    });
    
    //====================================================================================================
    // NAMESPACE: MAIN
    //====================================================================================================
    $.extend($, {
        "crigtt": {}
    });
    
    //====================================================================================================
    // EVENT HANDLERS
    //====================================================================================================
    $(window).load(function () {
        var contentTabsElem = $("div#content-tabs");
        var homeContentTabElem = contentTabsElem.find("div#content-tab-home");
        var validatorContentTabElem = contentTabsElem.find("div#content-tab-validator");
        var validatorFormElem = validatorContentTabElem.find("form#form-validator");
        var validatorDocFileInputElem = validatorFormElem.find("input#input-file-doc");
        var validatorDisplayDocFileInputElem = validatorFormElem.find("input#input-file-doc-display");
        var validatorUploadButtonElem = validatorFormElem.find("button#btn-validator-upload");
        var validatorResultsProcessingWellElem = validatorContentTabElem.find("div#well-validator-results-processing");
        var validatorResultsEmptyWellElem = validatorContentTabElem.find("div#well-validator-results-empty");
        var validatorResultsPanelGroupElem = validatorContentTabElem.find("div#panel-group-validator-results");
        
        validatorDisplayDocFileInputElem.click($.proxy(function (event) {
            event.preventDefault();
            
            validatorDocFileInputElem.click();
        }, this));
        
        validatorDocFileInputElem.change($.proxy(function () {
            var validatorDocFile = validatorDocFileInputElem.get(0).files[0];
            var validatorDocFileName = (validatorDocFile ? validatorDocFile.name : undefined);
            
            validatorDisplayDocFileInputElem.val(validatorDocFileName);
            
            if (validatorDocFileName) {
                validatorUploadButtonElem.enable();
            } else {
                validatorUploadButtonElem.disable();
            }
        }, this));
        
        if (validatorDocFileInputElem.get(0).files.length == 1) {
            validatorUploadButtonElem.enable();
        }
        
        var validator = new $.crigtt.validate.Validator(validatorFormElem);
        
        validatorFormElem.submit(function (event) {
            event.preventDefault();
            
            var validateData = new FormData(this);
            
            validator.validate.apply(validator, [
                ValidatorRenderType.HTML,
                {
                    "beforeSend": function () {
                        $("div.panel div.panel-collapse", validatorResultsPanelGroupElem).collapse("hide");
                        
                        validatorUploadButtonElem.disable();
                        
                        validatorResultsProcessingWellElem.show();
                        validatorResultsEmptyWellElem.hide();
                    },
                    "complete": function () {
                        validatorUploadButtonElem.enable();
                        
                        validatorResultsProcessingWellElem.hide();
                        validatorResultsEmptyWellElem.hide();
                        
                        validatorResultsPanelGroupElem.show();
                    },
                    "data": validateData,
                    "process": function (status, resp, respFileName) {
                        var respElem = $($.parseHTML(resp)[0]);
                        
                        validatorResultsPanelGroupElem.prepend((status ? validator.resultPanel.apply(validator, [ respElem ])
                            .data($.crigtt.validate.Validator.VALIDATE_DATA_DATA_ENTRY_NAME, validateData) : respElem));
                    }
                }
            ]);
        });
    });
}(jQuery));
