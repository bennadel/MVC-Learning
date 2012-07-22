
<!--- Populate the view body. --->
<cfsavecontent variable="request.viewData.body">
	<cfoutput>


		<h1>
			Please Sign In
		</h1>


		<form action="./index.cfm?event=security.login" method="post" class="m-form">

			<input type="hidden" name="submitted" value="true" />


			<div class="entries">

				<div class="entry stackedEntry">

					<label>
						Email <span class="explanation">( your login )</span>:
					</label>

					<input type="text" name="email" value="ben@bennadel.com" class="block fullWidth" />

				</div>

				<div class="entry stackedEntry">

					<label>
						Password:
					</label>

					<input type="password" name="password" value="" class="block fullWidth" />

					<div class="note">
						<a href="./index.cfm?event=security.forgotPassword">Forgot password</a>
					</div>

				</div>

			</div>

			<div class="buttons">

				<button type="submit" class="primary">
					Sign In
				</button>

			</div>


		</form>

		<p>
			Don't have an account? 
			<a href="./index.cfm?event=security.createAccount">Create one in 15 seconds</a>.
		</p>


	</cfoutput>
</cfsavecontent>
