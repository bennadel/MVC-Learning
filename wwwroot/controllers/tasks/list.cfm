
<cfscript>

	// Populate the view data for view rendering.
	include "/views/tasks/list.cfm";

	// Populate the view data for layout rendering.
	request.viewData.title = "Your Current Tasks";
	request.viewData.activeNavItem = "tasks";
	include "/layouts/standard.cfm";

</cfscript>