
<cfscript>

	
	// Param the second-level event.
	param name="request.event[ 2 ]" type="string" default="login";


	// Route the request based on the current event.
	switch (request.event[ 2 ]){

		case "createAccount":
			include "createAccount.cfm";
		break;

		case "forgotPassword":
			include "forgotPassword.cfm";
		break;

		case "login":
			include "login.cfm";
		break;

		case "logout":
			include "logout.cfm";
		break;

		case "passwordResetSent":
			include "passwordResetSent.cfm";
		break;

		case "resetPassword":
			include "resetPassword.cfm";
		break;

		// The provided event could not be matched.
		default:
			throw( type="InvalidEvent" );
		break;

	}


</cfscript>