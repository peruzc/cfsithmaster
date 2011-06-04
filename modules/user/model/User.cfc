/**
* A cool User entity
*/
component persistent="true" table="User"{
	// DI Properties
	property name="settings" inject="coldbox:configbean" persistent=false scope="this";
	//property name="logger" inject="logbox:logger:(this))" persistent="false" scope="this";

	// Primary Key
	property name="userID" fieldtype="id" column="userID" generator="native";

	// Properties
	property name="fname" ormtype="string";

	// Constructor
	function init(){

		return this;
	}
}