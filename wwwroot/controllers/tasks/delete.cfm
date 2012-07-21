
<cfscript>

	// Now that the user has deleted the task, redirect the user back to 
	// the list of tasks.
	location( url="./index.cfm?event=tasks", addToken="false" );

</cfscript>