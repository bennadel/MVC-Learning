
component 
	output="false"
	hint="I define the application settings and event handlers."
	{

	
	// Define the application settings. 
	this.name = hash( getCurrentTemplatePath() );
	this.applicationTimeout = createTimeSpan( 0, 1, 0, 0 );
	
	// Enable session management.
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan( 0, 0, 10, 0 );
		
		
	function onApplicationStart(){
		// ...
	}
	
	
	function onSessionStart(){
		// ...
	}
	
	
	function onRequestStart( String scriptName ){
		// ...
	}
	
	
	function onRequest( String scriptName ){
		
		// No matter what page is requested, include the controller.
		include "./index.cfm";		

	}
	
	
	function onError( Any error, String eventName ){
		writeDump( error );
		abort;
	}
	
		
}
