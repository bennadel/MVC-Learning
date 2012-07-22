
<!--- Populate the view body. --->
<cfsavecontent variable="request.viewData.body">
	<cfoutput>


		<h1>
			You Have 3 Open Tasks
		</h1>

		<form method="post" action="#cgi.script_name#" class="m-taskList">

			<ol class="tasks">

				<li class="task">

					<input type="checkbox" name="isComplete" value="0" class="isComplete" />

					<a href="./index.cfm?event=tasks.edit" class="view">
						<span class="description">This is a task</span>
						<span class="arrow">&raquo;</span>
					</a>

				</li>

				<li class="task">

					<input type="checkbox" name="isComplete" value="0" class="isComplete" />

					<a href="./index.cfm?event=tasks.edit" class="view">
						<span class="description">This is another task</span>
						<span class="arrow">&raquo;</span>
					</a>

				</li>

				<li class="task">

					<input type="checkbox" name="isComplete" value="0" class="isComplete" />

					<a href="./index.cfm?event=tasks.edit" class="view">
						<span class="description">This is a task with a really long description of what needs to be done</span>
						<span class="arrow">&raquo;</span>
					</a>

				</li>

			</ol>

		</form>

		
		<form method="post" action="" class="m-form">

			<div class="entries">

				<div class="entry stackedEntry">
					
					<label>
						Add New Task:
					</label>

					<input type="text" name="description" value="" class="block fullWidth" />

				</div>

			</div>

			<div class="buttons">

				<button type="submit" class="primary">
					Add Task
				</button>

			</div>

		</form>


	</cfoutput>
</cfsavecontent>
