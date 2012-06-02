
<!--- Param the view data for the rendering. --->
<cfparam name="request.viewData.title" type="string" default="" />
<cfparam name="request.viewData.primaryContent" type="string" default="" />


<!--- Reset the output buffer. --->
<cfcontent type="text/html" />

<cfoutput>

	<!doctype>
	<html>
	<head>
		<title>#htmlEditFormat( request.viewData.title )#</title>
	</head>
	<body>

		<h1>
			#htmlEditFormat( request.viewData.title )#
		</h1>

		<div class="nav">
			<a href="./index.cfm?event=tasks">Tasks</a> &nbsp;|&nbsp;
			<a href="./index.cfm?event=account">Account</a> &nbsp;|&nbsp;
			<a href="./index.cfm?event=security.logout">Logout</a>
		</div>

		<hr />

		<!--- Primary content for the layout. --->
		#request.viewData.primaryContent#

		<hr />

		<p>
			Copyright #year( now() )#.
		</p>

	</body>
	</html>

</cfoutput>