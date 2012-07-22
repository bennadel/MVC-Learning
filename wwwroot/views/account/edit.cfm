
<!--- Populate the view body. --->
<cfsavecontent variable="request.viewData.body">
	<cfoutput>


		<h1>
			Your Profile
		</h1>

		<form method="post" action="./index.cfm?event=account.edit" class="m-form">

			<input type="hidden" name="submitted" value="true" />


			<div class="entries">

				<div class="entry stackedEntry">

					<label>
						Name:
					</label>

					<input type="text" name="name" value="" class="block fullWidth" />

				</div>

				<div class="entry stackedEntry">

					<label>
						Email <span class="explanation">( your login )</span>:
					</label>

					<input type="text" name="email" value="" class="block fullWidth" />

				</div>

			</div>

			<div class="buttons">

				<button type="submit" class="primary">
					Save Profile
				</button>

			</div>

		</form>

		<p>
			Looking to <a href="./index.cfm?event=account.changePassword">change your password</a>?
		</p>


	</cfoutput>
</cfsavecontent>