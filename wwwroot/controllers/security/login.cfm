
<cfscript>

	// Param the form values.
	param name="form.submitted" type="boolean" default="false";

	// Check to see if the form has been submitted.
	if (form.submitted){

		// Now that the user is authenticated, forward the user to
		// the homepage.
		location( url="./index.cfm", addToken="false" );

	}

	// Populate the view data for view rendering.
	include "/views/security/login.cfm";

	// Populate the view data for layout rendering.
	request.viewData.title = "Please Login";
	request.viewData.activeNavItem = "signIn";
	include "/layouts/security.cfm";

</cfscript>