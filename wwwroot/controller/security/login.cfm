
<cfscript>


	// Param the form values.
	param name="form.submitted" type="boolean" default="false";
	param name="form.email" type="string" default="";
	param name="form.password" type="string" default="";

	// Check to see if the form has been submitted - if so, we'll 
	// have to process the form data.
	if (form.submitted){

		// ...

	}

	// Include the view builder and the layout.
	include "/view/security/login.cfm";
	include "/layout/security.cfm";


</cfscript>