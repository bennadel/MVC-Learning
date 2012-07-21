
<cfscript>

	// Param the form values.
	param name="form.submitted" type="boolean" default="false";

	// Check to see if the form has been submitted.
	if (form.submitted){

		// Now that the user has updated the task, redirect them back to the 
		// list of tasks.
		location( url="./index.cfm?event=tasks", addToken="false" );

	}

	// Populate the view data for view rendering.
	include "/views/tasks/edit.cfm";

	// Populate the view data for layout rendering.
	request.viewData.title = "Task Details";
	request.viewData.activeNavItem = "tasks";
	include "/layouts/standard.cfm";

</cfscript>