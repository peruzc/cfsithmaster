/*
handlers/User.cfc
@author Peruz Carlsen
@createdate 20110605
@description User handler
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