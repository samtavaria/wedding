<?php

$host="localhost"; // Host name
$username="root"; // Mysql username
$password="admin"; // Mysql password
$db_name="team12"; // Database name

//$conn = mysql_connect("localhost", "root", "admin");

//Connect to server and select database.
mysql_connect("$host", "$username", "$password")or die("cannot connect to server");
mysql_select_db("$db_name")or die("cannot select DB");

?>