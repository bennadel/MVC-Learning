
component
	output="false"
	hint="I provide persistence methods for Account information."
	{


	// I return an initialized component.
	function init( Any util ){
		
		// Store a reference to our utility library.
		variables.util = util;
		
		// Create our cache of accounts. The account data will be 
		// stored as simple structs:
		//
		// - ID
		// - Name
		// - Email
		// - Password
		// - LastLogin
		//
		// When the data is being stored or retreived, this raw data
		// will be translated into domain entities. I am doing this so
		// that I don't accidentally break encapsulation by passing 
		// around referencing to the underyling data.
		variables.accounts = [];

		// Create an internal primary key for the accounts table. As
		// we create new accounts, each one will get a new, unique ID
		// value based on this primary key.
		variables.primaryKey = 0;
		
		// Return this object reference.
		return( this );
		
	}
	
	
	// I get the accounts with the given credentials.
	function getByCredentials( String email, String password ){
		
		// Filter the records based on email and password.
		var accounts = arrayFilter(
			variables.accounts,
			function( account ){
				
				// Return true if both the email and password match
				// the given values.
				return(
					(account.email == email) &&
					(account.password == password)
				);
				
			}
		);
		
		// Return the matching accounts (may be empty).
		return( this._wrapEntities( accounts ) );
		
	}


	// I get the account with the given ID.
	function getByID( Numeric id ){

		// Filter the records based on ID.
		var accounts = arrayFilter(
			variables.accounts,
			function( account ){
				
				// Return true if both the ID matches.
				return( account.id == id );
				
			}
		);
		
		// Return the matching accounts (may be empty).
		return( this._wrapEntities( accounts ) );

	}
	
	
	// I determine if the given email address is already in use by
	// an existing account.
	function isEmailTaken( String email ){
		
		// Find an account with the given name. This will return the
		// index of the matching record (or zero if not found).
		var accountExists = arrayFind(
			variables.accounts,
			function( account ){
			
				// Return true if the email matches.
				return( account.email == email );
				
			}
		);
		
		// Return true if the account with the email was found.
		return( accountExists );
		
	}
	
	
	// I save the given account.
	function save( Any account ){
		
		// Check to see if the account has already been persisted. 
		// In this case, if it has an ID, it has been persisted.
		if (account.getID()){

			// The account entity is being updated.

		} else {

			// The account entity is being created.
			

		}

	}


	// I wrap the given array of raw account data as Account entities.
	function _wrapEntities( accounts ){

		var entities = [];

		for (var account in accounts){

			arrayAppend(
				entities,
				new Account(
					id = account.id,
					name = account.name,
					email = account.email,
					password = account.password,
					lastLogin = account.lastLogin
				)
			);

		}

		return( entities );

	}
	
		
}
