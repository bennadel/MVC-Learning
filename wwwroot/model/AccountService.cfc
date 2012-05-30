
component
	output="false"
	hint="I provide account functionality."
	{


	// I return an initialize component.
	function init( Any util, Any accountGateway ){

		// Cache the utility object.
		variables.util = util;

		// Cache the account gateway.
		variables.accountGateway = accountGateway;

		// Return this object reference.
		return( this );

	}


	// I create a new account with the given properties.
	function createAccount(
		String name,
		String email,
		String password
		){
		// ...
	}


	// I return the account with given credentials.
	function getAccountWithCredentials( String email, String password ){
		// ...
	}


}