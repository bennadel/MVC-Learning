
<cfscript>

	// Because we don't have an active security system, explicitly 
	// forward the user to the login form.
	location( url="./index.cfm?event=security.login", addToken="false" );
	
	/*
	// Log the user out of the current session.
	application.securityService.deauthorize( session.user );

	// Redirect back to the home page.
	location( url="./index.cfm", addToken=false );
	*/

</cfscript>