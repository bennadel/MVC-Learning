component 
	output = "false"
	hint = "I provide a testing silo for sever-side tests."
	{


	// Define the application settings.
	this.name = hash( getCurrentTemplatePath() );
	this.applicationTimeout = createTimeSpan( 0, 0, 5, 0 );

	// Disable session management since our Model doesn't need to 
	// know about our sessions - anything that is supposed to be
	// persisted accross requests, we can create for our tests.
	this.sessionManagement = false;

	// Get the root directory for this sub-app; this will be used to
	// calculate our mappings.
	this.rootDirectory = getDirectoryFromPath( getCurrentTemplatePath() );


	// Set up our mappings for the models directory of our top-level 
	// application since our specs (test specifications) need to 
	// instantiate our models.
	this.mappings[ "/models" ] = (this.rootDirectory & "../../models/");

	// Set up the MXUnit mapping since components within the MXUnit 
	// framework need to self-reference.
	this.mappings[ "/mxunit" ] = (this.rootDirectory & "mxunit/");

	// Set up the specs mapping so that the test specifications can be
	// referenced from within the MXUnit framework.
	this.mappings[ "/specs" ] = (this.rootDirectory & "specs/");


}