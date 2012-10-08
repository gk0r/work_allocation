// 
// Data Tables configuration
// 

// $(function() {
// 	$('table').dataTable(
// 		{
// 			"sDom": 'C<"row">Rlfrtip',
// 			"bStateSave": true,
// 			"sAjaxSource": '../ba_specs.json',
// 			"aoColumns" : [
// 			                       { "mData": "project" },
// 			                       { "mData": "release" },
// 			                       { "mData": "deliverable" },
// 			                       { "mData": "user" },
// 			                       { "mData": "name" },
// 			                       { "mData": "effort" },
// 			                       { "mData": "progress" },
// 			                       { "mData": "internal_review_date" },
// 			                       { "mData": "internal_review_signoff" },
// 			                       { "mData": "external_review_date" },
// 			                       { "mData": "external_review_date" },
// 			                       { "mData": "final_version" },
// 			                       { "mData": "comments" },
// 			                       { "mData": "link" },
// 			                   ],			
// 			"fnStateSave": function (oSettings, oData) {
// 			            localStorage.setItem( 'DataTables_'+window.location.pathname, JSON.stringify(oData) );
// 			       },
//       "fnStateLoad": function (oSettings) {
//           return JSON.parse( localStorage.getItem('DataTables_'+window.location.pathname) );
//       }
// 		});
// });


// -------------------------------------
// 
// Copy of a working javascript
//
// Populate as needed
// 
// -------------------------------------


// $(function() {
// 	$('table').dataTable(
// 		{
// 			"sDom": 'C<"row">Rlfrtip',
// 			"bStateSave": true,
// 			"fnStateSave": function (oSettings, oData) {
// 			            localStorage.setItem( 'DataTables_'+window.location.pathname, JSON.stringify(oData) );
//        },
//       "fnStateLoad": function (oSettings) {
//           return JSON.parse( localStorage.getItem('DataTables_'+window.location.pathname) );
//       }
// 		});
// });


// -------------------------------------
// 
// Copy of a working javascript
//
// This is a copy of working Java Script that works for BaSpecs. I am using JSON ajax query to retrieve the data
// 
// -------------------------------------


// $(function() {
// 	$('table').dataTable(
// 		{
// 			"sDom": 'C<"row">Rlfrtip',
// 			"bStateSave": true,
// 			"sAjaxSource": '../ba_specs.json',
// 			"aoColumns" : [
// 			                       { "mData": "project" },
// 			                       { "mData": "release" },
// 			                       { "mData": "deliverable" },
// 			                       { "mData": "user" },
// 			                       { "mData": "name" },
// 			                       { "mData": "effort" },
// 			                       { "mData": "progress" },
// 			                       { "mData": "internal_review_date" },
// 			                       { "mData": "internal_review_signoff" },
// 			                       { "mData": "external_review_date" },
// 			                       { "mData": "external_review_date" },
// 			                       { "mData": "final_version" },
// 			                       { "mData": "comments" },
// 			                       { "mData": "link" },
// 			                   ],			
// 			"fnStateSave": function (oSettings, oData) {
// 			            localStorage.setItem( 'DataTables_'+window.location.pathname, JSON.stringify(oData) );
// 			       },
//       "fnStateLoad": function (oSettings) {
//           return JSON.parse( localStorage.getItem('DataTables_'+window.location.pathname) );
//       }
// 		});
// });