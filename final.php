<?php
session_start();


$conn = mysql_connect("localhost", "root", "admin");

        if (!$conn) {
            echo "Unable to connect to DB: " . mysql_error();
            exit;
        }

        if (!mysql_select_db("team12")) {
            echo "Unable to select mydbname: " . mysql_error();
            exit;
        }




$id= $_SESSION['guest_id'];

$haldi = $_POST['haldi'];

$mehandi= $_POST['mehndi'];

$reception= $_POST['reception'];

$sangeet= $_POST['sangeet'];

$wedding= $_POST['wedding_ceremony'];


echo $haldi."......>".$mehandi.".....>".$reception."....>".$sangeet.".......>".$wedding.".......>".$id;

mysql_query("Update guest set rsvp_haldi='$haldi', rsvp_mehndi='$mehandi',rsvp_reception='$reception',rsvp_sangeet='$sangeet',rsvp_wedding_ceremony='$wedding' where g_id='1'");

//or die(mysql_error());


?>

<html>
<head>
<title>RSVP</title>

<h1> Thank You! </h1>

</head>
<body></body>
</html>

