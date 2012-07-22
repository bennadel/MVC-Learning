
<!--- Populate the view body. --->
<cfsavecontent variable="request.viewData.body">
	<cfoutput>


		<h1>
			Change Your Password
		</h1>

		<form method="post" action="./index.cfm?event=account.changePassword" class="m-form">

			<input type="hidden" name="submitted" value="true" />


			<div class="entries">

				<div class="entry stackedEntry">

					<label>
						Old Password:
					</label>

					<input type="password" name="oldPassword" value="" class="block fullWidth" />

				</div>

				<div class="entry stackedEntry">

					<label>
						New Password:
					</label>

					<input type="password" name="newPassword" value="" class="block fullWidth" />

				</div>

			</div>

			<div class="buttons">

				<button type="submit" class="primary">
					Save New Password
				</button>

			</div>

		</form>

		<p>
			Oops, take me <a href="./index.cfm?event=account.edit">back to my profile</a>.
		</p>
		

	</cfoutput>
</cfsavecontent>