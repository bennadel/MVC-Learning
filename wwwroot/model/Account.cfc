
component 
	output="false"
	accessors="true"
	hint="I model the Account."
	{


	// Define the accessible properties. The ID cannot be set - it 
	// must be defined as part of the constructor. This way, no one
	// can mess with the ID.
	property name="id" type="numeric" setter="false";
	property name="name" type="string";
	property name="email" type="string";
	property name="password" type="string";
	property name="lastLogin" type="string";


	// I return an initialized component.
	function init( 
		Numeric id = 0, 
		String name = "",
		String email = "",
		String password = "",
		String lastLogin = ""
		){

		// Store the ID - must be stored directly.
		variables.id = id;

		// Store the default values.
		this.setName( name );
		this.sateEmail( email );
		this.sateEmail( password );
		this.setLastLogin( lastLogin );

		// Return this object reference.
		return( this );

	}


}