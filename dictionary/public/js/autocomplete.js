/**
*init autocomplete funtion
*author : manh quoc
*since 15/05/2014
*/
$(function() {
    $("#search").autocomplete({ minLength : 1});
    var valSelected= $("#language").val();
    if (valSelected=="vietnamese"){
        $("#search").autocomplete({source : availableTags_vi});
    }else{
        $("#search").autocomplete({source : availableTags_ja});
    }
});
/**
*event change select language
*author : manh quoc
*since 15/05/2014
*/
$(document).ready(function() {
    $("#language").on('change', function() {
    var valSelected= $("#language").val();
    if (valSelected=="vietnamese"){
        $("#search").autocomplete({source : availableTags_vi});
    }else{
        $("#search").autocomplete({source : availableTags_ja});
    }
    });
});