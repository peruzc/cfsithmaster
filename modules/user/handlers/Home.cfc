/**
* A normal ColdBox Event Handler
*/
component
	output="false"
{
	property name="userService" inject="entityService:User";

	function index(event)
		output="false"
	{
		event.setValue("users", userService.get(1));
	}

}