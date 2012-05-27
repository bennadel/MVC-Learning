
component
	output="false"
	hint="I provide security functionality for authorization and authentication."
	{


	// I return an initialized component.
	function init( Any accountService ){

		// Cache the account service.
		variables.accountService = accountService;

		// Return this object reference.
		return( this );

	}


	// I authenticate the given account based on the given 
	// credentials. Note that the password here is expected to be the
	// the plain-text password. Any securing of the password will be
	// encapsulated internally.
	function authenticate( String email, String password ){

		// Return the account of the authenticating user.
		return( {} );

	}


	// I authorize the 


	// I take a plain-text password and I convert it into a secure
	// password by hashing it with salt (so as to avoid hash databases).
	function hashPassword( String password ){

		// Return the hashed version of the "salted" password.
		return(
			hash( password & "icanhazsecurity" )
		);

	}


}