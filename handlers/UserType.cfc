/*
handlers/UserType.cfc
@author Peruz Carlsen
@createdate 20110605
@description UserType handler
*/
component
	output="false"
{
	property name="ormService" inject="coldbox:plugin:ORMService";

	function index(event)
		output="false"
	{
		event.setValue("UserType", ormService.new("UserType"));
	}

	function create(event)
		output="false"
	{
		var userType = ormService.new("UserType");
		userType.setShortName("Admin");
		userType.setLongName("Admin");

		ormService.save(userType);

		event.setValue("userType", userType);
		event.setView("usertype/index");
	}
}