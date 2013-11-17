<?php

include('config.php');
require_once 'swift/lib/swift_required.php';

// table name
$tbl_name="temp_members_db";

// Random confirmation code
$confirm_code=md5(uniqid(rand()));

// values sent from form
$g_first_name=$_POST['g_first_name'];
$g_middle_name=$_POST['g_middle_name'];
$g_last_name=$_POST['g_last_name'];

$g_father_name=$_POST['g_father_name'];
$g_mother_name=$_POST['g_mother_name'];


$b_first_name=$_POST['b_first_name'];
$b_middle_name=$_POST['b_middle_name'];
$b_last_name=$_POST['b_last_name'];

$b_father_name=$_POST['b_father_name'];
$b_mother_name=$_POST['b_mother_name'];

$username=$_POST['username']; //email
$password=$_POST['password'];
$country=$_POST['country'];

// Insert data into database
$sql="INSERT INTO $tbl_name(confirm_code, b_first_name, b_middle_name, b_last_name, g_first_name, g_middle_name, g_last_name, g_father_name, g_mother_name, b_father_name, b_mother_name, username, password, country)VALUES('$confirm_code', '$b_first_name', '$b_middle_name', '$b_last_name', '$g_first_name', '$g_middle_name', '$g_last_name', '$g_father_name', '$g_mother_name', '$b_father_name', '$b_mother_name', '$username', '$password', '$country')";
$result=mysql_query($sql);

// if suceesfully inserted data into database, send confirmation link to email
if($result){
// ---------------- SEND MAIL FORM ----------------

// send e-mail to ...

$transport = Swift_SmtpTransport::newInstance('smtp.gmail.com', 465, "ssl")
  ->setUsername('onlineweddingusc@gmail.com')
  ->setPassword('samtajain');

$mailer = Swift_Mailer::newInstance($transport);

$message = Swift_Message::newInstance('Test Subject')
  ->setFrom(array('onlineweddingusc@gmail.com' => 'Rathin'))
  ->setTo(array($username))
  ->setBody("http://localhost/confirmation.php?passkey=$confirm_code");


$result = $mailer->send($message);
$res=1;
}

// if not found
else {
echo "Not found your email in our database";
}

// if your email succesfully sent
if($res==1){
echo "Your Confirmation link Has Been Sent To Your Email Address.";
}
else {
echo "Cannot send Confirmation link to your e-mail address";
}
?>