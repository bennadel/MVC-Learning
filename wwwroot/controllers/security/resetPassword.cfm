
<cfscript>

	// Param the form values.
	param name="form.submitted" type="boolean" default="false";

	// Check to see if the form has been submitted.
	if (form.submitted){

		// Now that the user has chosen a new password, redirect them
		// back to the login screen where they can make use of it.
		location( url="./index.cfm?event=security.login", addToken="false" );

	}

	// Populate the view data for view rendering.
	include "/views/security/resetPassword.cfm";

	// Populate the view data for layout rendering.
	request.viewData.title = "Choose A New Password";
	include "/layouts/security.cfm";

</cfscript>