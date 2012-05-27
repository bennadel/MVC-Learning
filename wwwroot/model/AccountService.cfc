
component
	output="false"
	hint="I provide account functionality."
	{


	// I return an initialize component.
	function init( Any util, Any accountGateway ){

		// Cache the utility object.
		variables.util = util;

		// Cache the account gateway.
		variables.accountGateway = accountGateway;

		// Return this object reference.
		return( this );

	}


}