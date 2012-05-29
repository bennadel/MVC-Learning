
<!--- Param the view data for the rendering. --->
<cfparam name="request.viewData.email" type="string" default="" />


<!--- Populate the primary content to be used in the layout. --->
<cfsavecontent variable="request.viewData.primaryContent">
	<cfoutput>


		<form action="./index.cfm?event=security.login" method="post">

			<input type="hidden" name="submitted" value="true" />

			<p>
				Email: 
				<input type="text" name="email" value="#htmlEditFormat( request.viewData.email )#" />
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