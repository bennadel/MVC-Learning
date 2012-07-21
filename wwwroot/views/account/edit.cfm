
<!--- Populate the view body. --->
<cfsavecontent variable="request.viewData.body">
	<cfoutput>


		<p>
			Your profile...
		</p>

		<p>
			Looking to <a href="./index.cfm?event=account.changePassword">change your password</a>?
		</p>


	</cfoutput>
</cfsavecontent>