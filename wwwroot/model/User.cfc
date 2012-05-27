
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

		// Return this object reference.
		return( this );

	}
	

}