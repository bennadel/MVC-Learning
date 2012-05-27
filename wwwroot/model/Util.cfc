
component
	output="false"
	hint="I provide utility methods that make common processing tasks easier."
	{


	// I return an initialize component. Note, however, that this 
	// component is not designed to have state; rather, it is just a
	// collection of utilities.
	function init(){
		
		// Return this object reference.
		return( this );
		
	}
	
	
	// I return the first instance from the collection that causes
	// the operator to return true.
	function arrayFirstInstance( collection, operator ){
		
		// Get the length of the collection so we don't have to keep 
		// recalculating it during the iteration.
		var length = arrayLen( collection );
		
		// Loop over the collection, using the operator to find the
		// first matching instance.,
		for (var i = 1 ; i <= length ; i++){
			
			// Check to see if this instance matches.
			if (operator( collection[ i ], i )){
				
				// We found a match; return out of the function - we
				// don't need to continue searching for another match.
				return( collection[ i ] );
				
			}
			
		}
		
		// If we made it this far, we didn't find any instance; 
		// return NULL.
		return;
		
	}

		
}
