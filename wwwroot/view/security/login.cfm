
<cfset request.title = "Please Login" />

<cfsavecontent variable="request.primaryContent">
	<cfoutput>


		<form action="./index.cfm?event=security.login" method="post">

			<input type="hidden" name="submitted" value="true" />

			<p>
				Email: 
				<input type="text" name="email" value="#htmlEditFormat( form.email )#" />
			</p>

			<p>
				Password: 
				<input type="password" name="password" value="" />
			</p>

			<p>
				<input type="submit" value="Login" />
			</p>

			<p>
				Don't have an account? 
				<a href="./index.cfm?event=security.createAccount">Create one</a>.
			</p>

		</form>


	</cfoutput>
</cfsavecontent>