
<!--- Populate the view body. --->
<cfsavecontent variable="request.viewData.body">
	<cfoutput>


		<h3>
			Task Details
		</h3>

		<form action="./index.cfm?event=tasks.edit" method="post">

			<input type="hidden" name="submitted" value="true" />

			<p>
				<input type="submit" value="Save Task" />
			</p>
			
		</form>


	</cfoutput>
</cfsavecontent>