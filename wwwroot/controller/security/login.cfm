
<cfscript>

	// Param the form values.
	param name="form.submitted" type="boolean" default="false";

	// Check to see if the form has been submitted.
	if (form.submitted){

		// Now that the user is authenticated, forward the user to
		// the homepage.
		location( url="./index.cfm", addToken="false" );

	}

	// Populate the view data for rendering.
	request.viewData.title = "Please Login";
	
	// Populate the relevant views and layout.
	include "/view/security/login.cfm";
	include "/layout/security.cfm";


	/*
	// Param the form values.
	param name="form.submitted" type="boolean" default="false";
	param name="form.email" type="string" default="";
	param name="form.password" type="string" default="";

	// Create a collection of errors.
	errors = [];

	// Check to see if the form has been submitted - if so, we'll 
	// have to process the form data.
	if (form.submitted){

		// Check to see if we can authenticate the user based on the 
		// given credentials.
		accountID = application.securityService.authenticate( form.email, form.password );

		// If the account ID comes back as Zero, then the credentials
		// did not match an existing account.
		if (accountID){

			// Store the account ID in the current session.
			session.user.setID( accountID );

			// Authorize the user.
			application.securityService.authorize( session.user );

			// Redirect to homepage.
			location( url="./index.cfm", addToken=false );

		}

		// If we made it this far, then the user's credentials did
		// not match - set the error message.
		errors[ 1 ] = "Your email and/or password is incorrect.";

	}

	// Populate the view data for rendering.
	request.viewData.errors = errors;
	request.viewData.title = "Please Login";
	request.viewData.email = form.email;

	// Include the view and the layout.
	include "/view/security/login.cfm";
	include "/layout/security.cfm";
	*/

</cfscript>