
<cfscript>

	// Param the form values.
	param name="form.submitted" type="boolean" default="false";

	// Check to see if the form has been submitted.
	if (form.submitted){

		// Now that the user has updated their password, redirect them back to the 
		// default page.
		location( url="./index.cfm", addToken="false" );

	}

	// Populate the view data for view rendering.
	include "/views/account/changePassword.cfm";

	// Populate the view data for layout rendering.
	request.viewData.title = "Change Password";
	request.viewData.activeNavItem = "profile";
	include "/layouts/standard.cfm";

</cfscript>