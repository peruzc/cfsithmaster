component	output="false"{	property name="userService" inject="entityService:User";	public void function index(required event)		output="false"	{		var rc = event.getCollection();		event.setValue("welcomeMessage", "Welcome to ColdBox!");		event.setValue("xehCharacterAsset", "character:home.index");	}
}