<cfscript>

	
	// Set up our test suite.
	testSuite = new mxunit.framework.TestSuite().TestSuite();

	// Add the test sepcification for our Task model.
	testSuite.addAll( "specs.TaskTest" );
	testSuite.addAll( "specs.AccountTest" );

	// Run the tests that have been added to the test suite. This 
	// will include all of the methods in the test specifications.
	results = testSuite.run();

	// Output the test results as HTML. Pass in the webroot to the
	// MXUnit folder so that the rendering can properly set the CSS
	// and JavaScript paths.
	writeOutput(
		results.getHtmlResults( "./mxunit/" )
	);


</cfscript>
