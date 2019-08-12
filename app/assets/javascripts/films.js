$(document).on('turbolinks:load',function () {
    var films = new Bloodhound({
        datumTokenizer: Bloodhound.tokenizers.whitespace,
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        remote: {
            url: '/films/autocomplete?query=%QUERY',
            wildcard: '%QUERY'
        }
    });
    $('films_search').typeahead(null,{
        source: films
    })
})