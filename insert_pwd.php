<?php

require_once '/swift/lib/swift_required.php';
echo "<html><body background = media/website_images/body.jpg>";

session_start();

$email=$_SESSION['name'];

$pwd=$_POST['password'];

if($_POST['submit']=='Send')
{

mysql_connect('team12.c28dqpxgij9r.us-east-1.rds.amazonaws.com','team12wedding','team_12_wedding') or die(mysql_error);
mysql_select_db('team12');

$query="UPDATE Couple SET password = '$pwd' WHERE username='$email'";
$result=mysql_query($query);
if(!$result)
{
echo "Invalid. Try Again";
}
else
{
echo '<br>';
echo '<a href="index.php"> Password Reset.Please login again</a>';
}
  }
?>