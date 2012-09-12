// 
// Data Tables configuration
// 

$(function() {
	$('table').dataTable(
		{
			"sDom": 'C<"row">Rlfrtip',
			"bStateSave": true,
			"fnStateSave": function (oSettings, oData) {
			            localStorage.setItem( 'DataTables_'+window.location.pathname, JSON.stringify(oData) );
			       },
			       "fnStateLoad": function (oSettings) {
			           return JSON.parse( localStorage.getItem('DataTables_'+window.location.pathname) );
			       }
		});
});


// -------------------------------------
// 
// Copy of a working javascript
//
// Populate as needed
// 
// -------------------------------------
