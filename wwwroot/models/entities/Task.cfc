component 
	output = "false"
	accessors = "true"
	hint = "I model a Task."
	{


	// Define properties for synthesized getters / setters.
	property name = "id" type = "Numeric";
	property name = "accountID" type = "Numeric";
	property name = "description" type = "String";
	property name = "note" type = "String";
	property name = "isComplete" type = "Boolean";
	property name = "dateCreated" type = "Date";
	property name = "dueDate" type = "Date";


	// I return an initialized component.
	function init( 
		Numeric id,
		Numeric accountID, 
		String description,
		String note = "",
		Boolean isComplete = false,
		Date dateCreated,
		Date dueDate
		){

		// Set all the required properties.
		this.setID( id );
		this.setAccountID( accountID );
		this.setDescription( description );
		this.setNote( note );
		this.setIsComplete( isComplete );
		this.setDateCreated( dateCreated );

		// Set the optional due date if it has been supplied.
		if (!isNull( dueDate )){

			this.setDueDate( dueDate );

		}

		// Return this object reference.
		return( this );

	}


	// I complete the task.
	function complete(){

		// Return this object reference for method chaining.
		return(
			this.setIsComplete( true )
		);

	}


	// I determine if the task has a due date.
	function hasDueDate(){

		return( !isNull( variables.dueDate ) );

	}


	// I determine if the task has a note attached to it.
	function hasNote(){

		return( len( this.getNote() ) != 0 );

	}


	// I check to see if the task is complete.
	function isComplete(){

		return( this.getIsComplete() == true );

	}


	// I check to see if the task is incomplete.
	function isIncomplete(){

		return( !this.isComplete() );

	}


	// I check to see if the task is overdue when compared to the 
	// given date.
	function isOverdue( Date currentDate = now() ){

		// If the task does not have a due date, then it cannot 
		// be overdue. 
		if (!this.hasDueDate()){

			return( false );

		}

		return( this.getDueDate() < currentDate );

	}


	// I set the account ID (the owner of the task).
	function setAccountID( Numeric accountID ){

		// Validate accountID.
		if (accountID == 0){

			throw( 
				type = "InvalidArgument",
				message = "Task must be associated with an account."
			);

		}

		variables.accountID = accountID;

		// Return this object reference for method chaining.
		return( this );

	}


	// I set the description property.
	function setDescription( String description ){

		// Validate description.
		if (description == ""){

			throw(
				type = "InvalidArgument", 
				message = "Task must have a description."
			);

		}

		variables.description = description;

		// Return this object reference for method chaining.
		return( this );

	}


	// I set the ID property.
	function setID( Numeric id ){

		// Validate id.
		if (id == 0){

			throw(
				type = "InvalidArgument",
				message = "ID must be non-zero." 
			);

		}

		variables.id = id;

		// Return this object reference for method chaining.
		return( this );

	}

}
