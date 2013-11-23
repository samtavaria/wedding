<?php

include('config.php');
require_once 'swift/lib/swift_required.php';
require_once('recaptchalib.php');
echo "<html><body background = media/website_images/body.jpg>";

$privatekey = "6LeSuuoSAAAAAHz086OOhNo7kbzz_JvzqcKk3Gn5";
$resp = recaptcha_check_answer ($privatekey,
    $_SERVER["REMOTE_ADDR"],
    $_POST["recaptcha_challenge_field"],
    $_POST["recaptcha_response_field"]);

if (!$resp->is_valid) {
    // What happens when the CAPTCHA was entered incorrectly
    die ("The CAPTCHA wasn't entered correctly. Please Go back and try it again.");
}

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

$message = Swift_Message::newInstance('Online Wedding Management System Account Registration')
  ->setFrom(array('onlineweddingusc@gmail.com' => 'OnlineWedding'))
  ->setTo(array($username))
  ->setBody("http://localhost:8083/wedding/confirmation.php?passkey=$confirm_code");


$result = $mailer->send($message);
$res=1;
}

// if not found
else {
echo "Can't found your email in our database";
}

// if your email succesfully sent
if($res==1){
echo "Your Confirmation link Has Been Sent To Your Email Address.";
}
else {
echo "Cannot send Confirmation link to your e-mail address";
}
echo "</body></html>";
