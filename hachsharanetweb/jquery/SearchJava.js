jQuery(document).ready(function ($) {


    jQuery('#nlk-search-str').on('keydown', function (e) {
        if (e.which == 13 || event.keyCode == 13) {
            jQuery('#nlk-search-submit').trigger('click');
        }
    });

    jQuery('#nlk-search-methods').on('keydown', function (e) {
        if (e.which == 13 || event.keyCode == 13) {
            jQuery('#nlk-search-submit').trigger('click');
        }
    });


    jQuery('.nlk-search-type').on('click', function () {
        var targetSite = jQuery(this).data('value');
        var searchAction = jQuery(this).data('action');
        var searchParam = jQuery(this).data('param');
        var searchTarget = jQuery(this).data('target');
        var targetRadio = jQuery(this).data('radio');

        jQuery(targetRadio).prop('checked', true);
        jQuery('#nlk-search-str').attr('placeholder', targetSite);
        jQuery('#nlk-search-str').attr('name', searchParam);
        jQuery('#nlk-search-form').attr('action', searchAction);
        jQuery('#nlk-search-form').attr('target', searchTarget);

    });


    jQuery('#nlk-search-submit').on('click', function () {
        var searchStr = jQuery('#nlk-search-str').val();
        if (!searchStr || searchStr === '') {
            var noquery = jQuery('#nlk-search-str').data('def');
            jQuery('#nlk-search-str').attr('placeholder', noquery);
        } else {
            jQuery('#nlk-search-form').submit();
        }
    });

});