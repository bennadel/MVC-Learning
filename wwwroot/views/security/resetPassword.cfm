
<!--- Populate the view body. --->
<cfsavecontent variable="request.viewData.body">
	<cfoutput>


		<form action="./index.cfm?event=security.resetPassword" method="post">

			<input type="hidden" name="submitted" value="true" />

			<p>
				New Password: 
				<input type="password" name="password" value="" />
			</p>

			<p>
				Re-Type Password: 
				<input type="password" name="password2" value="" />
			</p>

			<p>
				<input type="submit" value="Save Password" />
			</p>

		</form>


	</cfoutput>
</cfsavecontent>