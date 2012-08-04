component
	extends = "mxunit.framework.TestCase"
	output = "false"
	hint = "I test the Task model."
	{


	// I test basic Task creation and property getters.
	function testBasicCreateAndPropertyRead(){

		// Set up some common values to be used for our tests.
		var id = 1;
		var accountID = 101;
		var description = "Pick up flowers.";
		var note = "Get red flowers so they look nice in the blue vase.";
		var isComplete = false;
		var dateCreated = now();
		var dueDateTomorrow = dateAdd( "d", 1, dateCreated );
		var dueDateYesterday = dateAdd( "d", -1, dateCreated );


		// Create a task without a due date.
		var task = new models.entities.Task(
			id: id,
			accountID: accountID,
			description: description,
			note: note,
			isCompleted: isComplete,
			dateCreated: dateCreated
		);

		// Test core getters.
		assertEquals( id, task.getID(), "ID is unexpected value." );
		assertEquals( accountID, task.getAccountID(), "AccountID is unexpected value." );
		assertEquals( description, task.getDescription(), "Description is unexpected value" );
		assertEquals( note, task.getNote(), "Note is unexpected value" );
		assertEquals( isComplete, task.getIsComplete(), "IsComplete is unexpected value" );
		assertEquals( dateCreated, task.getDateCreated(), "DateCreated is unexpected value" );

		// Test meta-getters.
		assertEquals( false, task.hasDueDate(), "Unexpected due date result." );
		assertEquals( true, task.hasNote(), "Unexpected note result." );
		assertEquals( false, task.isComplete(), "Unexpected complete result." );
		assertEquals( true, task.isIncomplete(), "Unexpected incomplete result." );
		assertEquals( false, task.isOverdue(), "Unexpected overdue result." );


		// Create a task that has a future due-date.
		var task = new models.entities.Task(
			id: id,
			accountID: accountID,
			description: description,
			note: note,
			isCompleted: isComplete,
			dateCreated: dateCreated,
			dueDate: dueDateTomorrow
		);

		// Test core getters.
		assertEquals( dueDateTomorrow, task.getDueDate(), "DueDate is unexpected value" );

		// Test meta-getters.
		assertEquals( true, task.hasDueDate(), "Unexpected due date result." );
		assertEquals( false, task.isOverdue(), "Unexpected overdue result." );


		// Create a task that has a past due-date.
		var task = new models.entities.Task(
			id: id,
			accountID: accountID,
			description: description,
			note: note,
			isCompleted: isComplete,
			dateCreated: dateCreated,
			dueDate: dueDateYesterday
		);

		// Test core getters.
		assertEquals( dueDateYesterday, task.getDueDate(), "DueDate is unexpected value" );

		// Test meta-getters.
		assertEquals( true, task.hasDueDate(), "Unexpected due date result." );
		assertEquals( true, task.isOverdue(), "Unexpected overdue result." );

	}


	// I test the complete action of a task.
	function testTaskComplete(){

		// Set up some common values to be used for our tests.
		var id = 1;
		var accountID = 101;
		var description = "Pick up flowers.";
		var note = "Get red flowers so they look nice in the blue vase.";
		var isComplete = false;
		var dateCreated = now();
		

		// Create an open task.
		var task = new models.entities.Task(
			id: id,
			accountID: accountID,
			description: description,
			note: note,
			isCompleted: isComplete,
			dateCreated: dateCreated
		);

		// Test core getters.
		assertEquals( isComplete, task.getIsComplete(), "IsComplete is unexpected value." );

		// Test meta-getters.
		assertEquals( isComplete, task.isComplete(), "Unexpected complete result." );
		assertEquals( !isComplete, task.isIncomplete(), "Unexpected incomplete result." );

		// Complete task.
		task.complete();

		// Test core getters.
		assertEquals( !isComplete, task.getIsComplete(), "IsComplete is unexpected value." );

		// Test meta-getters.
		assertEquals( !isComplete, task.isComplete(), "Unexpected complete result." );
		assertEquals( isComplete, task.isIncomplete(), "Unexpected incomplete result." );

	}


}