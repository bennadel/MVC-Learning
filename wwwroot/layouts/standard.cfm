
<!--- Param the view data for the layout rendering. --->
<cfparam name="request.viewData.title" type="string" default="" />
<cfparam name="request.viewData.cssFile" type="string" default="security.css" />
<cfparam name="request.viewData.activeNavItem" type="string" default="" />
<cfparam name="request.viewData.body" type="string" default="" />


<!--- Set up the navigation body for the master layout. --->
<cfsavecontent variable="request.viewData.navigationBody">
	<cfoutput>


		<ul class="siteNavigation">
			<li class="navItem <cfif (request.viewData.activeNavItem eq "tasks")>activeNavItem</cfif>">
				<a href="./index.cfm?event=tasks">Tasks</a>
			</li>
			<li class="navItem <cfif (request.viewData.activeNavItem eq "profile")>activeNavItem</cfif>">
				<a href="./index.cfm?event=account">Profile</a>
			</li>
			<li class="navItem rightNavItem">
				<a href="./index.cfm?event=security.logout">Logout</a>
			</li>
		</ul>
		

	</cfoutput>
</cfsavecontent>


<!--- Include the master layout. --->
<cfinclude template="./master.cfm" />
