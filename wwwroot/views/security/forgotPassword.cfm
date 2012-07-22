
<!--- Populate the view body. --->
<cfsavecontent variable="request.viewData.body">
	<cfoutput>


		<h1>
			Forgot Your Passowrd?
		</h1>

		<p>
			Enter your email address below and we'll send you a reset-password confirmation.
		</p>

		<form action="./index.cfm?event=security.forgotPassword" method="post" class="m-form">

			<input type="hidden" name="submitted" value="true" />


			<div class="formEntires">

				<div class="entry stackedEntry">

					<label>
						Email: 
					</label>
					
					<input type="text" name="email" value="" class="block fullWidth" />

				</div>

			</div>

			<div class="buttons">

				<button type="submit" class="primary">
					Reset Password
				</button>

			</div>

		</form>

		<p>
			Oops, take me 
			<a href="./index.cfm?event=security.login">back to the login form</a>.
		</p>


	</cfoutput>
</cfsavecontent>