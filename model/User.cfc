/*
model/User.cfc
@author Peruz Carlsen
@createdate 20110606
@description User entity
*/
component
	persistent="true"
	table="User"
	output="false"
{
	// Primary Key
	property name="userID" fieldtype="id" column="userID" generator="uuid" length="35";

	// Properties
	property name="userTypeID" ormtype="string" type="string" length="35" notnull="true" required="true";
	property name="fname" ormtype="string" type="string" default="" length="25" notnull="true" required="true";	property name="middle" ormtype="string" type="string" default="" length="25" notnull="false";	property name="lname" ormtype="string" type="string" default="" length="25" notnull="true" required="true";	property name="username" ormtype="string" type="string" default="" length="25" notnull="true" required="true";	property name="password" ormtype="string" type="string" default="" length="128" notnull="true" required="true";
	property name="active" ormtype="boolean" type="boolean" default="true" dbdefault="true" notnull="true";
	//property name="addDate" ormtype="timestamp" type="date" dbdefault="current_timestamp" notnull="true";
	//property name="userType" fieldtype="many-to-one" cfc="UserType" fkcolumn="userTypeID" insert="false" update="false";

	// Constructor
	function init(){
		return this;
	}
}
