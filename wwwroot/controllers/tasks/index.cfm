
<cfscript>
	
	/*
	// Check to see if the user is logged-in - only an authorized 
	// user can access this controller.
	if (!session.user.isLoggedIn()){

		// Stop processing this route.
		throw( type="Unauthorized" );

	}
	*/

	
	// Param the second-level event. This will determine which action
	// is being performed in this controller.
	param name="request.event[ 2 ]" type="string" default="list";


	// Route the request based on the current event.
	switch (request.event[ 2 ]){

		case "delete":
			include "delete.cfm";
		break;

		case "edit":
			include "edit.cfm";
		break;

		case "list":
			include "list.cfm";
		break;

		// The provided event could not be matched.
		default:
			throw( type="InvalidEvent" );
		break;

	}

</cfscript>