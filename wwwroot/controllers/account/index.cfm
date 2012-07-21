
<cfscript>
	
	// Param the second-level event.
	param name="request.event[ 2 ]" type="string" default="edit";


	// Route the request based on the current event.
	switch (request.event[ 2 ]){

		case "changePassword":
			include "changePassword.cfm";
		break;

		case "edit":
			include "edit.cfm";
		break;

		// The provided event could not be matched.
		default:
			throw( type="InvalidEvent" );
		break;

	}

</cfscript>