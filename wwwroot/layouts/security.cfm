
<!--- Param the view data for the layout rendering. --->
<cfparam name="request.viewData.title" type="string" default="" />
<cfparam name="request.viewData.cssFile" type="string" default="security.css" />
<cfparam name="request.viewData.activeNavItem" type="string" default="" />
<cfparam name="request.viewData.body" type="string" default="" />


<!--- Set up the navigation body for the master layout. --->
<cfsavecontent variable="request.viewData.navigationBody">
	<cfoutput>


		<ul class="m-siteNavigation">
			<li class="navItem <cfif (request.viewData.activeNavItem eq "signIn")>activeNavItem</cfif>">
				<a href="./index.cfm?event=security.login">Sign In</a>
			</li>
			<li class="navItem <cfif (request.viewData.activeNavItem eq "createAccount")>activeNavItem</cfif>">
				<a href="./index.cfm?event=security.createAccount">Create Account</a>
			</li>
		</ul>
		

	</cfoutput>
</cfsavecontent>


<!--- Include the master layout. --->
<cfinclude template="./master.cfm" />
