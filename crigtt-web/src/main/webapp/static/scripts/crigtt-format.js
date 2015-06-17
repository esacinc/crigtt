(function ($) {
    //====================================================================================================
    // NAMESPACE: FORMATTING
    //====================================================================================================
    $.extend($.crigtt, {
        "format": {}
    });
    
    //====================================================================================================
    // CONSTANTS: FORMATTING
    //====================================================================================================
    $.extend($.crigtt.format, {
        "DATE_TIME_ZONE_PATTERN": /\(([^\)]+)\)$/,
    
        "DISPLAY_DATE_FORMAT": "YYYY-MM-DD HH:mm:ss ZZ"
    });
    
    //====================================================================================================
    // FUNCTIONS: FORMATTING
    //====================================================================================================
    $.extend($.crigtt.format, {
        "timestamp": function (timestamp) {
            var timestampDate = new Date(timestamp);
            var timestampTimeZoneMatches = $.crigtt.format.DATE_TIME_ZONE_PATTERN.exec(timestampDate.toString());
            
            return moment(timestampDate).format($.crigtt.format.DISPLAY_DATE_FORMAT) +
                (timestampTimeZoneMatches ? (String.SPACE + timestampTimeZoneMatches[1]) : String.EMPTY);
        }
    });
}(jQuery));
