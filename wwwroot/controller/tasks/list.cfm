
<cfscript>
	
	// Populate the view data for rendering.
	request.viewData.title = "Your Current Tasks";
	
	// Populate the relevant views and layout.
	include "/view/tasks/list.cfm";
	include "/layout/standard.cfm";

</cfscript>