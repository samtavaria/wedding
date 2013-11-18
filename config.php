<?php

$host="team12.c28dqpxgij9r.us-east-1.rds.amazonaws.com"; // Host name
$username="team12wedding"; // Mysql username
$password="team_12_wedding"; // Mysql password
$db_name="team12"; // Database name

//$conn = mysql_connect("team12.c28dqpxgij9r.us-east-1.rds.amazonaws.com", "team12wedding", "team_12_wedding");

//Connect to server and select database.
mysql_connect("$host", "$username", "$password")or die("cannot connect to server");
mysql_select_db("$db_name")or die("cannot select DB");

?>