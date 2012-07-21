
<!--- Populate the view body. --->
<cfsavecontent variable="request.viewData.body">
	<cfoutput>


		<form action="./index.cfm?event=security.createAccount" method="post">

			<input type="hidden" name="submitted" value="true" />

			<p>
				Email: 
				<input type="text" name="email" value="ben@bennadel.com" />
			</p>

			<p>
				Password: 
				<input type="password" name="password" value="" />
			</p>

			<p>
				Re-Type Password: 
				<input type="password" name="password2" value="" />
			</p>

			<p>
				<input type="submit" value="Create Account" />
			</p>

			<p>
				Already have an account?
				<a href="./index.cfm?event=security.login">Back to login</a>.
			</p>

		</form>


	</cfoutput>
</cfsavecontent>