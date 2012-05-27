
component
	output="false"
	hint="I provide persistence methods for Account information."
	{


	// The rough structure of the Account is as such:
	//
	// - id
	// - name
	// - email
	// - password
	// - lastLogin

	
	// I return an initialized component.
	function init( Any util ){
		
		// Store a reference to our utility library.
		variables.util = util;
		
		// Create our cache of accounts.
		variables.accounts = [];
		
		// Return this object reference.
		return( this );
		
	}
	
	
	// I get the account with the given credentials.
	function getByCredentials( String email, String password ){
		
		// Get the first matching instance.
		var account = variables.util.arrayFirstInstance(
			function( account ){
				
				// Return true if both the email and password match
				// the given values.
				return(
					(email == account.email) &&
					(password == account.password)
				);
				
			}
		);
		
		// Return the instance (or NULL).
		return( account );
		
	}
	
	
	// I determine if the given email address is already in use by
	// an existing account.
	function isEmailTaken( String email ){
		
		// Find an account with the given name.
		var exists = arrayFind(
			variables.accounts,
			function( account ){
			
				// Return true if the email matches.
				return( account.email == email );
				
			}
		);
		
		// Return true if the account with the email was found.
		return( exists );
		
	}
	
	
	// I save the given account.
	function save(){
		
	}
	
		
}
