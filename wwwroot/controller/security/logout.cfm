
<cfscript>
	

	// Log the user out of the current session.
	application.securityService.deauthorize( session.user );

	// Redirect back to the home page.
	location( url="./index.cfm", addToken=false );


</cfscript>