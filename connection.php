<?php

function Connect()
{
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "id13709370_hungrykya";
	//id13709370_hungrykya123
	//Mann61099@db
	//Create Connection
	$conn = new mysqli($dbhost ,$dbuser ,$dbpass, $dbname) or die($conn->connect_error);

	return $conn;
}
?>