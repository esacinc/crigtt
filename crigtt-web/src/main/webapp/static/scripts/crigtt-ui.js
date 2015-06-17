(function ($) {
    //====================================================================================================
    // EXTENSIONS: TABLESORTER
    //====================================================================================================
    $.extend($.tablesorter.defaults, {
        "headerTemplate": "{content}{icon}",
        "theme": "bootstrap",
        "widgetOptions": {
            "uitheme": "bootstrap"
        },
        "widgets": [
            "uitheme"
        ]
    });
    
    //====================================================================================================
    // EXTENSIONS: TABLESORTER THEME
    //====================================================================================================
    $.extend($.tablesorter.themes.bootstrap, {
        "iconSortAsc": "fa fa-fw fa-sort-up",
        "iconSortDesc": "fa fa-fw fa-sort-down",
        "iconSortNone": "fa fa-fw fa-sort"
    });
    
    //====================================================================================================
    // NAMESPACE: USER INTERFACE
    //====================================================================================================
    $.extend($.crigtt, {
        "ui": {}
    });
    
    //====================================================================================================
    // CLASS: USER INTERFACE EVENT LEVEL ITEM
    //====================================================================================================
    $.extend($.crigtt.ui, {
        "UiEventLevelItem": function (classNameSuffix) {
            this.classNameSuffix = classNameSuffix;
        }
    });
    
    $.extend($.crigtt.ui.UiEventLevelItem.prototype, {
        "classNameSuffix": undefined
    });
    
    //====================================================================================================
    // ENUM: USER INTERFACE EVENT LEVEL
    //====================================================================================================
    $.extend($.crigtt.ui, {
        "UiEventLevel": new Enum({
            "DEFAULT": new $.crigtt.ui.UiEventLevelItem("default"),
            "MUTED": new $.crigtt.ui.UiEventLevelItem("muted"),
            "PRIMARY": new $.crigtt.ui.UiEventLevelItem("primary"),
            "SUCCESS": new $.crigtt.ui.UiEventLevelItem("success"),
            "INFO": new $.crigtt.ui.UiEventLevelItem("info"),
            "WARNING": new $.crigtt.ui.UiEventLevelItem("warning"),
            "DANGER": new $.crigtt.ui.UiEventLevelItem("danger")
        })
    });
    
    //====================================================================================================
    // FUNCTIONS: USER INTERFACE COMPONENTS
    //====================================================================================================
    $.extend($.crigtt.ui, {
        "br": function () {
            return $("<br/>");
        },
        
        "icon": function (classes) {
            return $("<i/>", {
                "class": [ "fa", "fa-fw" ].concat(classes).join(String.SPACE)
            });
        },
        
        "strong": function (text) {
            return $("<strong/>").text(text);
        }
    });
}(jQuery));
