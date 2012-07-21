
<cfscript>
	
	// Populate the view data for rendering.
	request.viewData.title = "Your Password Reset Email Has Been Sent";
	
	// Populate the relevant views and layout.
	include "/views/security/passwordResetSent.cfm";
	include "/layouts/security.cfm";

</cfscript>