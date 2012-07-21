
<cfscript>
	
	// Param the form values.
	param name="form.submitted" type="boolean" default="false";

	// Check to see if the form has been submitted.
	if (form.submitted){

		// Now that the user has created an account, log the user into
		// the system and then forward them to the homepage.
		location( url="./index.cfm", addToken="false" );

	}

	// Populate the view data for view rendering.
	include "/views/security/createAccount.cfm";

	// Populate the view data for layout rendering.
	request.viewData.title = "Create An Account";
	request.viewData.activeNavItem = "createAccount";
	include "/layouts/security.cfm";

</cfscript>