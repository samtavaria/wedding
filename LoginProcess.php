<?php
include_once('model/PersistentDatabaseConnection.php');
$username = $_POST['username'];
$password = $_POST['password'];
$query = "select * from Couple where username = " . "'$username'" . " and password = " . "'$password'";
$sql = mysql_query($query);
$couple = mysql_fetch_assoc($sql);
$_SESSION['cid'] = $couple['c_id'];
//echo $_SESSION['cid'];exit;
header("Location: Menu.php");

