// 
// Data Tables configuration
// 
$(function() {
	$('table').dataTable(
		{
			"sDom": 'C<"clear">lfrtip',
			"sDom": "Rlfrtip",
			"bStateSave": true
		});
});


// -------------------------------------
// 
// Copy of a working javascript
// 
// -------------------------------------
//
// $(function() {
// 	$('table').dataTable(
// 		{
// 			"sDom": 'C<"clear">lfrtip',
// 			"bStateSave": true,
// 			"oColVis": {
// 						"activate": "mouseover"
// 					}
// 		});
// });