
<cfscript>

	// Param the form values.
	param name="form.submitted" type="boolean" default="false";

	// Check to see if the form has been submitted.
	if (form.submitted){

		// Now that the user has chosen a new password, redirect them
		// back to the login screen where they can make use of it.
		location( url="./index.cfm?event=security.login", addToken="false" );

	}

	// Populate the view data for rendering.
	request.viewData.title = "Choose A New Password";
	
	// Populate the relevant views and layout.
	include "/view/security/resetPassword.cfm";
	include "/layout/security.cfm";

</cfscript>