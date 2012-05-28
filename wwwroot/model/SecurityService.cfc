
component
	output="false"
	hint="I provide security functionality for authorization and authentication."
	{


	// I return an initialized component.
	function init( Any util, Any accountService ){

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

		// Get the account with the matching credentials. Since we
		// are storing the password in a cryptic fashion, we'll have
		// to hash the incoming value first.
		var account = variables.accountService.getAccountWithCredentials(
			email = email,
			password = this.hashPassword( password )
		);

		// Check to see if the account was found. If not, we'll have 
		// to return zero.
		if (isNull( account )){

			// Return 
			return( 0 );

		}

		// Return the account of the authenticating user.
		return( account.id );

	}


	// I authorize the given user (with the given ID).
	function authorize( Any user ){

	}


	// I create a new, unauthorized user for the current session.
	function createUser(){

		// Create and return an unauthrized user.
		return( new User() );

	}


	// I deauthorize (logout) the given user.
	function deauthorize( Any user ){

		// Reset the values. Since the login-status is based on the
		// ID, this will consider the user logged-out.
		user.setId( 0 );
		user.setName( "" );
		user.setEmail( "" );

	}


	// I take a plain-text password and I convert it into a secure
	// password by hashing it with salt (so as to avoid hash databases).
	function hashPassword( String password ){

		// Return the hashed version of the "salted" password.
		return(
			hash( password & "icanh@zsecurity" )
		);

	}


}