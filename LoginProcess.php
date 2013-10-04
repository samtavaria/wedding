<?php
include_once('PersistentDatabaseConnection.php');
$username = $_POST['username'];
$password = $_POST['password'];

$query = "select * from Couple where username = " . "'$username'" . " and password = " . "'$password'";
$sql = mysql_query($query);
$couple = mysql_fetch_assoc($sql);
$_SESSION['cid'] = $couple['c_id'];
header("Location: TemplateSelection.php");