$(function() {
	// Menu Collapse
	$(".collapse-trigger").click(function () {
    $(".side-menu").slideUp('slow', function() {$(".main-body").removeClass("span9").addClass("span12");});
   });

	// Date Picker - jQuery UI
	$(".date").datepicker({dateFormat: "D, d MM yy"});	
});