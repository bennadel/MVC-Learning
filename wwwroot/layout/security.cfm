
<!--- Param the layout variables. --->
<cfparam name="request.title" type="string" default="" />


<!--- Reset the output buffer. --->
<cfcontent type="text/html" />

<cfoutput>

	<!doctype>
	<html>
	<head>
		<title>#htmlEditFormat( request.title )#</title>
	</head>
	<body>

		<h1>
			#htmlEditFormat( request.title )#
		</h1>

		<!--- Primary content for the layout. --->
		#request.primaryContent#

	</body>
	</html>

</cfoutput>