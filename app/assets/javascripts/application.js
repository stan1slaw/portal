//= require jquery
//= require popper
//= require bootstrap-sprockets
//= require jquery_ujs
//= require chosen-jquery
//= require turbolinks
//= require activestorage
//= require typeahead.bundle
//= require_tree .


$(document).on('turbolinks:load', function () {
    $('#post_tag_ids').chosen({
        allow_single_deselect: true,
        width: '100%'
    })
});

