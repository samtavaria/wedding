<?php
include_once('model/PersistentDatabaseConnection.php');
//session_start();


$conn = mysql_connect("localhost", "root", "admin");
        if (!$conn) {
            echo "Unable to connect to DB: " . mysql_error();
            exit;
        }

        if (!mysql_select_db("team12")) {
            echo "Unable to select mydbname: " . mysql_error();
            exit;
        }



//if these $_['guest_id'] and ... is not null, only then store the foll. values
//$gid= $_SESSION['gid'];

$mehandi = '';
$sangeet = '';
$haldi = '';
$wedding = '';
$reception = '';
if(!empty($_POST['mehndi']))
{
$mehandi = $_POST['mehndi'];
}

if(!empty($_POST['sangeet']))
{
$sangeet = $_POST['sangeet'];
}
if(!empty($_POST['haldi']))
{
$haldi = $_POST['haldi'];
}
//echo "haldi is".$haldi;

if(!empty($_POST['wedding_ceremony']))
{
$wedding = $_POST['wedding_ceremony'];
}

if(!empty($_POST['reception']))
{
$reception = $_POST['reception'];
}

$results=array($mehandi,$sangeet,$haldi,$wedding,$reception,$_POST['gid']);

DatabaseConnection::updateRSVP($results);



?>

<html>
<head>
<title>RSVP</title>

<h1> Thank You! </h1>

</head>
<body background = media/website_images/body.jpg>
</body>
</html>

