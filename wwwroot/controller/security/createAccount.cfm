
<cfscript>
	
	// Param the form values.
	param name="form.submitted" type="boolean" default="false";

	// Check to see if the form has been submitted.
	if (form.submitted){

		// Now that the user has created an account, log the user into
		// the system and then forward them to the homepage.
		location( url="./index.cfm", addToken="false" );

	}

	// Populate the view data for rendering.
	request.viewData.title = "Create An Account";
	
	// Populate the relevant views and layout.
	include "/view/security/createAccount.cfm";
	include "/layout/security.cfm";

</cfscript>