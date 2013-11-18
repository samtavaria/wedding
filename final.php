<?php
include_once('model/PersistentDatabaseConnection.php');
//session_start();


$conn = mysql_connect("team12.c28dqpxgij9r.us-east-1.rds.amazonaws.com", "team12wedding", "team_12_wedding");
        if (!$conn) {
            echo "Unable to connect to DB: " . mysql_error();
            exit;
        }

        if (!mysql_select_db("team12")) {
            echo "Unable to select mydbname: " . mysql_error();
            exit;
        }



//if these $_['guest_id'] and ... is not null, only then store the foll. values
$gid= $_SESSION['gid'];
echo $gid;
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

$results=array($mehandi,$sangeet,$haldi,$wedding,$reception,$gid);

DatabaseConnection::updateRSVP($results);

/*if(!empty($mehandi))
{
mysql_query("update Guest set rsvp_mehndi='$mehandi' where g_id='$gid'");

echo $mehandi."------";
}

else
    mysql_query("update Guest set rsvp_mehndi='N/A' where g_id='$gid'");


if(!empty($sangeet))
{
mysql_query("update Guest set rsvp_sangeet='$sangeet' where g_id='$gid'");
echo $sangeet."------";
}
else
    mysql_query("update Guest set rsvp_sangeet='N/A' where g_id='$gid'");

if(!empty($haldi))
{
mysql_query("update Guest set rsvp_haldi='$haldi' where g_id='$gid'");
echo $haldi."------";
}

else
    mysql_query("update Guest set rsvp_haldi='N/A' where g_id='$gid'");

if(!empty($wedding))
{
mysql_query("update Guest set rsvp_wedding_ceremony='$wedding' where g_id='$gid'");
echo $wedding."------";

}

else
    mysql_query("update Guest set rsvp_wedding_ceremony='N/A' where g_id='$gid'");

if(!empty($reception))
{
mysql_query("update Guest set rsvp_reception='$reception' where g_id='$gid'");
echo $reception."------";

}
else
   mysql_query("update Guest set rsvp_reception='N/A' where g_id='$gid'");*/

//echo $gid."------";

//mysql_query("Update guest set rsvp_haldi='$haldi', //rsvp_mehndi='$mehandi',rsvp_reception='$reception',rsvp_sangeet='$sangeet',rsvp_wedding_ceremony='$wedding' where g_id='C1G1'");

//or die(mysql_error());


?>

<html>
<head>
<title>RSVP</title>

<h1> Thank You! </h1>

</head>
<body>
</body>
</html>

