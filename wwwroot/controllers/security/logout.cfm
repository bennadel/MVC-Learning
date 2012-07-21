
<cfscript>

	// Because we don't have an active security system, explicitly 
	// forward the user to the login form.
	location( url="./index.cfm?event=security.login", addToken="false" );
	
</cfscript>