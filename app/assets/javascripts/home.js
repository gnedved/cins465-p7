# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
  $("#dialog_div").dialog({
      autoOpen: false,
	  modal: true,
      show: {
        effect: "blind",
        duration: 500
      },
      hide: {
        effect: "fade",
        duration: 750
      }
    });
  $( ".image").click(function() {
    $( "#dialog_div" ).dialog( "open" );
  });
});

