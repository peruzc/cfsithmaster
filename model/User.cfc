/**
* A cool User entity
*/
component persistent="true" table="User"{
	// Primary Key
	property name="userID" fieldtype="id" column="userID" generator="native";

	// Properties
	property name="userTypeID" ormtype="int";
	property name="fname" ormtype="string";	property name="middle" ormtype="string";	property name="lname" ormtype="string";	property name="username" ormtype="string";	property name="password" ormtype="string";
	property name="userType" fieldtype="many-to-one" cfc="UserType" fkcolumn="userTypeID" insert="false" update="false";

	// Constructor
	function init(){

		return this;
	}
}
