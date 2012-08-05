component 
	output = "false"
	accessors = "true"
	hint = "I model an Account."
	{


	// Define properties for synthesized getters / setters.
	property name = "id" type = "Numeric";
	property name = "name" type = "String";
	property name = "email" type = "String";
	property name = "password" type = "String";
	property name = "dateCreated" type = "Date";


	// I return an initialized component.
	function init( 
		Numeric id,
		String name,
		String email,
		String password,
		Date dateCreated
		){

		// Set all the required properties.
		this.setID( id );
		this.setName( name );
		this.setEmail( email );
		this.setPassword( password );
		this.setDateCreated( dateCreated );

		// Return this object reference.
		return( this );

	}


	// I set the email property.
	function setEmail( String email ){

		// Validate email.
		if (!isValid( "email", email )){

			throw(
				type = "InvalidArgument",
				message = "Email must be a valid email address." 
			);

		}

		variables.email = email;

		// Return this object reference for method chaining.
		return( this );

	}


	// I set the name property.
	function setName( String name ){

		// Validate name.
		if (name == ""){

			throw(
				type = "InvalidArgument",
				message = "Name must be non-zero length." 
			);

		}

		variables.name = name;

		// Return this object reference for method chaining.
		return( this );

	}


	// I set the password property.
	function setPassword( String password ){

		// Validate password.
		if (password == ""){

			throw(
				type = "InvalidArgument",
				message = "Password must be non-zero length." 
			);

		}

		variables.password = password;

		// Return this object reference for method chaining.
		return( this );

	}

}
