
component 
	output="false"
	hint="I define the application settings and event handlers."
	{

	
	// Calculate the base path of the application. This will be used
	// to create a unique name as well as defined several of the 
	// application mappings.
	this.baseDirectory = getDirectoryFromPath( getCurrentTemplatePath() );
	
	// Define the application settings. 
	this.name = hash( this.baseDirectory );
	this.applicationTimeout = createTimeSpan( 0, 1, 0, 0 );
	
	// Enable session management.
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan( 0, 0, 10, 0 );
		
	// Map our various MVC folder paths. The Model directory will be 
	// for CFC instantiation; the other two - View and Controller - 
	// will be simple CFM (templates) at this time.
	this.mappings[ "/model" ] = (this.baseDirectory & "model/");
	this.mappings[ "/view" ] = (this.baseDirectory & "view/");
	this.mappings[ "/controller" ] = (this.baseDirectory & "controller/");
	
	
	// I initialize the application.
	function onApplicationStart(){
		
		// Create our utility instance. This provides extra processing
		// utilities; and, since our "persistance" layer is going to
		// be in-memory, we'll need some additional utilities for working
		// with complex data structures.
		var util = new Model.Util();
		
		// Create our gateways. These will create the actual data 
		// persistance layer. All data access and mutation should pass
		// through this layer and nothing else in the application will
		// know how data is actually being stored.
		// 
		// NOTE: No gateway should ever have a reference to another 
		// gateway. Gateways should only worry about their data and 
		// their persistence. 
		application.accountGateway = new model.AccountGateway( util ); 
		
		// Create our services. These will use the gateways to save 
		// and access data. While services can have references to 
		// other services, each service may only talk to its own 
		// gateway.
		application.accountService = new model.accountService( util, application.accountGateway );

		// Return true so the application can be processed.
		return( true );
		
	}
	
	
	// I initialize the user's web session.
	function onSessionStart(){
		// ...
	}
	
	
	// I initiliaze the incoming request.
	function onRequestStart( String scriptName ){
		
		// Check to see if the application needs to be refreshed.
		if (structKeyExists( url, "init" )){
			
			// Manually invoke the application reset.
			this.onApplicationStart();
			
		}
		
		// Return true so the page can be processed.
		return( true );
	
	}
	
	
	// I process the actual request. 
	function onRequest( String scriptName ){
		
		// No matter what page is requested, include the controller.
		include "./index.cfm";		

	}
	
	
	// I process any errors that have bubbled upto the root of the 
	// application without being caught by the controller or model.
	function onError( Any error, String eventName ){
		
		// Debug....
		writeDump( error );
		abort;
		
	}
	
		
}
