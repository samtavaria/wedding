<?php
require_once '/swift/lib/swift_required.php';
echo "<html><body background = media/website_images/body.jpg>";
error_reporting(0);
$email=$_POST['email'];
if($_POST['submit']=='Send')
{
mysql_connect('team12.c28dqpxgij9r.us-east-1.rds.amazonaws.com','team12wedding','team_12_wedding') or die(mysql_error);
mysql_select_db('team12');
$query="select * from Couple where username='$email'";
$result=mysql_query($query) or die(error);
if(mysql_num_rows($result))
{
$code=rand(100,999);
$transport = Swift_SmtpTransport::newInstance('smtp.gmail.com', 465, "ssl")
  ->setUsername('onlineweddingusc@gmail.com')
  ->setPassword('samtajain');

$mailer = Swift_Mailer::newInstance($transport);

$message = Swift_Message::newInstance('Forgot Password?')
  ->setFrom(array('onlineweddingusc@gmail.com' => 'Online Wedding Management'))
  ->setTo(array($email))
  ->setBody("http://localhost:8083/wedding/password.php?email=$email&code=$code");


$result = $mailer->send($message);
echo "Email to reset password has been sent to your Email ID.";
}
else
{
echo "No user exists with this email ID";
}
}
?>