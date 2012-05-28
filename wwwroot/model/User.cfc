
component
	output="false"
	accessors="true"
	hint="I represent a user of the system."
	{


	// Define the properties that will get synthesized accessors.
	property name="id" type="numeric";
	property name="name" type="string";
	property name="email" type="string";


	// I return an initialized component.
	function init(){

		// Set the default values.
		this.setId( 0 );
		this.setName( "" );
		this.setEmail( "" );

		// Return this object reference.
		return( this );

	}


	// I determine if the current user is logged-in.
	function isLoggedIn(){

		// To keep things simple, we'll consider the user logged-in
		// if we have the unique ID associated with the user's account.
		return( this.getId() != 0 );

	}


}