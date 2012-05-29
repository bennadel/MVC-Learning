
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

		<!--- Primary content for the layout. --->
		#request.viewData.primaryContent#

	</body>
	</html>

</cfoutput>