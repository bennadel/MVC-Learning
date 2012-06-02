

<!--- Populate the primary content to be used in the layout. --->
<cfsavecontent variable="request.viewData.primaryContent">
	<cfoutput>


		<p>
			Since your password has been stored in a one-way, encrypted format, 
			we cannot tell you what your password was; but, we can let you reset
			it. Please enter your email:
		</p>

		<form action="./index.cfm?event=security.forgotPassword" method="post">

			<input type="hidden" name="submitted" value="true" />

			<p>
				Email: 
				<input type="text" name="email" value="ben@bennadel.com" />
			</p>

			<p>
				<input type="submit" value="Reset Password" />
			</p>

			<p>
				Already have an account?
				<a href="./index.cfm?event=security.login">Back to login</a>.
			</p>

		</form>


	</cfoutput>
</cfsavecontent>