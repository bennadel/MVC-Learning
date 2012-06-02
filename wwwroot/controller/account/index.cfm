
<cfscript>

	
	// Param the second-level event.
	param name="request.event[ 2 ]" type="string" default="view";


	// Route the request based on the current event.
	switch (request.event[ 2 ]){

		// The provided event could not be matched.
		default:
			throw( type="InvalidEvent" );
		break;

	}


</cfscript>