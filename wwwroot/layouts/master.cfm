
<!--- Param the view data for the layout rendering. --->
<cfparam name="request.viewData.title" type="string" default="" />
<cfparam name="request.viewData.cssFile" type="string" default="" />
<cfparam name="request.viewData.navigationBody" type="string" default="" />
<cfparam name="request.viewData.alertBody" type="string" default="" />
<cfparam name="request.viewData.body" type="string" default="" />


<!--- Clear the content buffer. --->
<cfcontent type="text/html; charset=utf-8" />

<cfoutput>


	<!doctype html>
	<html>
	<head>
		<title>#request.viewData.title# - My Tasks</title>

		<!-- Meta data. -->
		<meta charset="utf-8" />

		<!-- Stylesheets. -->
		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:700,200" />
		<link rel="stylesheet" type="text/css" href="./css/#request.viewData.cssFile#" />
	</head>
	<body>
		
		<!-- BEGIN: Site Wrapper. -->
		<div class="l-siteWrapper">

			<div class="l-siteContainerTop">
				<br />
			</div>

			<!-- BEGIN: Site Container. -->
			<div class="l-siteContainer">

				<!-- BEGIN: Site Header. -->
				<div class="l-siteHeader">


					<a href="./index.cfm" class="m-siteTitle">
						<span class="primary">My Tasks</span>
						<span class="secondary">An MVC Learning Project</span>
					</a>

					
				</div>
				<!-- END: Site Header. -->

				<!-- BEGIN: Site Navigation. -->
				<div class="l-siteNavigation">


					<!--- Include the navigation body content. --->
					#request.viewData.navigationBody#


				</div>
				<!-- END: Site Navigation. -->

				<!-- BEGIN: Site Body. -->
				<div class="l-siteBody">


					<!-- BEGIN: Site Alert. -->
					<cfif len( request.viewData.alertBody )>

						<div class="m-siteAlert">
							#request.viewData.alertBody#
						</div>

					</cfif>
					<!-- END: Site Alert. -->


					<!--- Include the primary body content. --->
					#request.viewData.body#


				</div>
				<!-- END: Site Body. -->

			</div>
			<!-- END: Site Container. -->

			<!-- BEGIN: Site Outro. -->
			<div class="l-siteOutro">


				<!-- BEGIN: Site Explanation. -->
				<div class="m-siteExplanation">

					<h4>
						Really &mdash; Another Task App?
					</h4>

					<p>
						My Tasks is an application designed and created by 
						<a href="http://www.bennadel.com" target="_blank">Ben Nadel (www.bennadel.com)</a>
						as an attempt to learn more about Model-View-Controller (MVC) architecture and 
						Object-Oriented Programming (OOP). This applies to both the JavaScript front-end 
						and the ColdFusion backend.
					</p>

				</div>
				<!-- END: Site Explanation. -->
				

			</div>
			<!-- END: Site Outro. -->

		</div>
		<!-- END: Site Wrapper. -->

	</body>
	</html>


</cfoutput>
