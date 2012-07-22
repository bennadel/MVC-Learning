
<!--- Populate the view body. --->
<cfsavecontent variable="request.viewData.body">
	<cfoutput>


		<h1>
			Task Details
		</h1>

		<form method="post" action="./index.cfm?event=tasks.edit" class="m-form">

			<input type="hidden" name="submitted" value="true" />


			<div class="entries">

				<div class="entry stackedEntry">

					<label>
						Description:
					</label>

					<input type="text" name="description" value="" class="block fullWidth" />

				</div>

				<div class="lazyLoader">

					<a href="">Add a due date</a>

				</div>

				<div class="entry stackedEntry lazyEntry">

					<label>
						Due Date:
					</label>

					<div class="relatedFields">

						<select>
							<option>Today</option>
						</select>

						<span class="midText">at</span>

						<select>
							<option>11:00 AM</option>
						</select>

						<span class="endText">
							<a href="##">Remove</a>
						</span>

					</div>

				</div>

				<div class="lazyLoader">

					<a href="">Add a note</a>
					
				</div>

				<div class="entry stackedEntry lazyEntry">

					<label>
						Notes:
					</label>

					<input type="text" name="note" value="" class="block fullWidth" />

				</div>

			</div>

			<div class="buttons">

				<button type="submit" class="primary">
					Save Task
				</button>

				<button type="button">
					Complete Task
				</button>				

			</div>

		</form>

		<p>
			No longer relevant? <a href="./index.cfm?event=tasks">Delete this task</a>.
		</p>

	</cfoutput>
</cfsavecontent>
