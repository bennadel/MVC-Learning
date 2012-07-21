
<!--- Populate the view body. --->
<cfsavecontent variable="request.viewData.body">
	<cfoutput>


		<form action="./index.cfm?event=security.login" method="post">

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
				<input type="submit" value="Login" />
			</p>

			<p>
				<a href="./index.cfm?event=security.forgotPassword">Forgot your password</a>?	
				Don't have an account? 
				<a href="./index.cfm?event=security.createAccount">Create one in 15 seconds</a>.
			</p>

		</form>


	</cfoutput>
</cfsavecontent>