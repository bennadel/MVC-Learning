
<!--- Populate the view body. --->
<cfsavecontent variable="request.viewData.body">
	<cfoutput>


		<h1>
			Create An Account
		</h1>

		<form action="./index.cfm?event=security.createAccount" method="post" class="m-form">

			<input type="hidden" name="submitted" value="true" />


			<div class="formEntries">

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

				<div class="entry stackedEntry">

					<label>
						Password:	
					</label>

					<input type="password" name="password" value="" class="block fullWidth" />

				</div>

			</div>

			<div class="buttons">

				<button type="submit" class="primary">
					Create Account &amp; Sign In
				</button>

			</div>

		</form>

		<p>
			Already have an account?
			<a href="./index.cfm?event=security.login">Back to login</a>.
		</p>


	</cfoutput>
</cfsavecontent>