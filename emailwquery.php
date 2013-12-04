<?php
session_start();
require 'phpmail/PHPMailerAutoload.php';
include_once('model/PersistentDatabaseConnection.php');
include_once('return_homepage.php');

if (!$link = mysql_connect('team12.c28dqpxgij9r.us-east-1.rds.amazonaws.com', 'team12wedding', 'team_12_wedding')) {
    echo 'Could not connect to mysql';
    exit;
}

if (!mysql_select_db('team12', $link)) {
    echo 'Could not select database';
    exit;
}
$cid = $_SESSION['cid'];
//echo "cid: ".$cid;
$sql  = "SELECT c_id, first_name, last_name, email, g_id FROM Guest WHERE c_id = '$cid'";
$result = mysql_query($sql, $link);


if (!$result) {
    echo "DB Error, could not query the database\n";
    echo 'MySQL Error: ' . mysql_error();
    exit;
}

//mailer information
$mail = new PHPMailer();
$mail->isSMTP();
$mail->CharSet = 'UTF-8';

$mail->Host       = "smtp.gmail.com"; // SMTP server example
$mail->SMTPDebug  = 0;                     // enables SMTP debug informat
$mail->SMTPAuth   = true;                  // enable SMTP authentication
$mail->Port       = 587;                    // was 25 set the SMTP port for \
$mail->Username   = "OWMteam12@gmail.com"; // SMTP account use\
$mail->Password   = "wedding123";        // SMTP account password example
$mail->SMTPSecure = 'tls';

$mail->From = 'onlineweddingmanagement@gmail.com';
$mail->FromName = 'Online Wedding Management'; //change to name of bride or groom

while ($row = mysql_fetch_assoc($result)) {
    $nameguest = $row['last_name'];
    $c_id = $row['c_id'];
    $guestid = $row['g_id'];
//    $_SESSION['guest_id']="$guestid";
//  echo 'guestid:'.$_SESSION['guest_id'];
    $email = $row['email'];
    $first = $row['first_name'];
    $mail->addAddress($email, 'guest');
    $mail->Subject = 'Event Invitation';
    $mail->Body = "Dear $first $nameguest, You have been invited to a wedding event! 
    Please Click on the link below to rsvp.
    http://localhost:8083/wedding/rsvp_page.php?guest_id={$guestid}";
    if(!$mail->send()){
        echo 'couldnt send\n';
        echo 'mail error:' . $mail->ErrorInfo;
	}
    $mail->ClearAllRecipients();
}

//mysql_free_result($result);

?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<style type="text/css">
h1 {
    font-family: forte, cursive, Serif;
}

h1 {
color: black
}

;
h1 {
    font-size: 50%
}

;

</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<title>
Create Free Wedding Websites | Sites with Indian Designs | </title>
</head>

<body class="home" background="media/website_images/body.jpg" style="background-repeat: no-repeat;-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;">


<div align='center'>
<h1><font size='100px'>Messages sent sucessfully!</font></h1>
</div>


<br><br><br>

</body>

</html>
