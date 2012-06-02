
<cfscript>
	
	// Param the form values.
	param name="form.submitted" type="boolean" default="false";

	// Check to see if the form has been submitted.
	if (form.submitted){

		// The user will be sent a "password reset" email with a link
		// to a page that will collection a new password.
		location( url="./index.cfm?event=security.passwordResetSent", addToken="false" );

	}

	// Populate the view data for rendering.
	request.viewData.title = "Forgot Your Password?";
	
	// Populate the relevant views and layout.
	include "/view/security/forgotPassword.cfm";
	include "/layout/security.cfm";

</cfscript>