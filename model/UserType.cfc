/*
model/UserType.cfc
@author Peruz Carlsen
@createdate 20110606
@description UserType entity
*/
component
	persistent="true"
	table="UserType"
	output="false"
{

	// Primary Key
	property name="userTypeID" fieldtype="id" column="userTypeID" generator="uuid" length="35";

	// Properties
	property name="shortName" ormtype="string" type="string" default="" length="25" notnull="true" required="true";	property name="longName" ormtype="string" type="string" default="" length="25" notnull="true" required="true";
	property name="active" ormtype="boolean" type="boolean" default="true" dbdefault="true" notnull="true";

	// Constructor
	function init(){
		return this;
	}
}
