
<cfscript>
	
	// Param the form values.
	param name="form.submitted" type="boolean" default="false";

	// Check to see if the form has been submitted.
	if (form.submitted){

		// The user will be sent a "password reset" email with a link
		// to a page that will collection a new password.
		location( url="./index.cfm?event=security.passwordResetSent", addToken="false" );

	}

	// Populate the view data for view rendering.
	include "/views/security/forgotPassword.cfm";

	// Populate the view data for layout rendering.
	request.viewData.title = "Forgot Your Password";
	include "/layouts/security.cfm";

</cfscript>