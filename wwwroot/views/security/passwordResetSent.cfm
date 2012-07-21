
<!--- Populate the view body. --->
<cfsavecontent variable="request.viewData.body">
	<cfoutput>


		<p>
			I a few moments, you should receive an email with a link 
			to choose a new password.
		</p>

		<p>
			<a href="./index.cfm?event=security.login">Back to login</a>.
		</p>


	</cfoutput>
</cfsavecontent>