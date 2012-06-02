

<!--- Populate the primary content to be used in the layout. --->
<cfsavecontent variable="request.viewData.primaryContent">
	<cfoutput>


		<p>
			You Have 2 Tasks
		</p>

		<table border="1" cellpadding="10" cellspacing="2">
			<thead>
				<tr>
					<th>
						Task
					</th>
					<th>
						Comments
					</th>
					<th>
						Due Date
					</th>
					<th>
						Actions
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						Make dinner plans with David.
					</td>
					<td>
						2
					</td>
					<td>
						Today
					</td>
					<td>
						<a href="./index.cfm?event=tasks.edit">Edit</a> -
						<a href="./index.cfm?event=tasks.delete">Delete</a>
					</td>
				</tr>
				<tr>
					<td>
						Feed cats.
					</td>
					<td>
						0
					</td>
					<td>
						Tomorrow
					</td>
					<td>
						<a href="./index.cfm?event=tasks.edit">Edit</a> -
						<a href="./index.cfm?event=tasks.delete">Delete</a>
					</td>
				</tr>
			</tbody>
		</table>


		<h3>
			Create New Task
		</h3>

		<form action="./index.cfm?event=tasks.add" method="post">

			<p>
				<input type="text" name="description" value="" size="50" />
				<input type="submit" value="Add Task" />
			</p>
			
		</form>


	</cfoutput>
</cfsavecontent>