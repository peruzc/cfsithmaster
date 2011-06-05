/**
* A cool UserType entity
*/
component
	persistent="true"
	table="UserType"
	output="false"
{

	// Primary Key
	property name="userTypeID" fieldtype="id" column="userTypeID" generator="native";

	// Properties
	property name="shortName" ormtype="string";	property name="longName" ormtype="string";
	// Constructor
	function init(){
		return this;
	}
}
