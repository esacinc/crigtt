(function ($) {
    $(window).load(function () {
        var contentTabsElem = $("div#content-tabs"), contentTabHomeElem = $("div#content-tab-home", contentTabsElem),
            contentTabValidatorElem = $("div#content-tab-validator", contentTabsElem);

        $("input#input-file-doc", contentTabValidatorElem).change(function () {
            var inputFileDocElem = $(this);

            $("input#input-file-doc-display", inputFileDocElem.parents("div.input-group")).val(inputFileDocElem.val());
        });
    });
}(jQuery));
