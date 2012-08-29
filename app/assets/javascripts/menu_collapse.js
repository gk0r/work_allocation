$(function() {
	$(".collapse-trigger").click(function () {
	    if ($(".main-body").is(".span9")){
				// Collapse the menu 
				$(".side-menu").slideToggle('slow', function() {
					$(".main-body").toggleClass("span9");
					$(".collapse-trigger").html("Expand Menu");
					});
			}
			else {
				// Expand the menu
				$(".main-body").toggleClass("span9");
				$(".side-menu").slideToggle('slow', function() {
					$(".collapse-trigger").html("Collapse Menu");
				});
			}
	   });
});