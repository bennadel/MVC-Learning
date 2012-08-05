component
	extends = "mxunit.framework.TestCase"
	output = "false"
	hint = "I test the Account model."
	{


	// I test basic Account creation and property getters.
	function testBasicCreateAndPropertyRead(){

		// Set up some common values to be used for our tests.
		var id = 1;
		var name = "Anna Banana";
		var email = "anna.banana@sometestdomain.com";
		var password = "allYourBaseAreBelongToUs";
		var dateCreated = now();


		// Create a new Account.
		var account = new models.entities.Account(
			id: id,
			name: name,
			email: email,
			password: password,
			dateCreated: dateCreated
		);

		// Test core getters.
		assertEquals( id, account.getID(), "ID is unexpected value." );
		assertEquals( name, account.getName(), "Name is unexpected value." );
		assertEquals( email, account.getEmail(), "Email is unexpected value." );
		assertEquals( password, account.getPassword(), "Password is unexpected value." );
		assertEquals( dateCreated, account.getDateCreated(), "DateCreated is unexpected value." );


		// Set up some new values to test the getters / setters.
		id = 2;
		name = "Anna Banana 2";
		email = "anna.banana-2@sometestdomain.com";
		password = "allYourBaseAreBelongToUs-2";
		dateCreated = dateAdd( "d", -1, now() );

		// Set the new values.
		account.setID( id );
		account.setName( name );
		account.setEmail( email );
		account.setPassword( password );
		account.setDateCreated( dateCreated );

		// Make sure setter-values are echoed in getter values.
		assertEquals( id, account.getID(), "ID is unexpected value." );
		assertEquals( name, account.getName(), "Name is unexpected value." );
		assertEquals( email, account.getEmail(), "Email is unexpected value." );
		assertEquals( password, account.getPassword(), "Password is unexpected value." );
		assertEquals( dateCreated, account.getDateCreated(), "DateCreated is unexpected value." );

	}


}