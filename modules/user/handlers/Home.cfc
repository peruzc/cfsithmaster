/**
* A normal ColdBox Event Handler
*/
component{
	property name="userService" inject="entityService:User";

	function index(event){
		event.setValue("users", userService.get(1));
	}

}