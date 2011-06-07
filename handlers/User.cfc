/*
handlers/User.cfc
@author Peruz Carlsen
@createdate 20110605
@description User handler
*/
component
	output="false"
{
	property name="ormService" inject="coldbox:plugin:ORMService";

	function index(event)
		output="false"
	{
		event.setValue("User", ormService.new("User"));
	}

	function create(event)
		output="false"
	{
		var user = ormService.new("user");
		user.setUserTypeID("4028d1e430583946013067bc2c83002c");
		user.setFName("Peruz");
		user.setLName("Carlsen");
		user.setUsername("peruz");
		user.setPassword("password");

		ormService.save(user);

		event.setValue("user", user);
		event.setView("user/index");
	}
}