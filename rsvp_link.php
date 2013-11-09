<?php
session_start();
?>
<html>
<head>
<title>Divya</title>
</head>

<body>

<a href="http:\\localhost:8083\rsvp\rsvp_page.php">https://www.phere.com/rsvp/guest_id=%1001%</a>

<?php


$invite="https://www.phere.com/rsvp/guest_id=%1001%";
$temp=explode("%",$invite);

echo $temp[1];

$_SESSION['guest_id']=$temp[1];

?>

</body>

</html>