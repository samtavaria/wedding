<?php
session_start();
?>
<html>
<head>
<title></title>
</head>

<body>

<form method="POST" action="rsvp_page.php">
Enter guest id here:
<!--input type="text" name="gid"-->
<input type="submit" name="submit" value="submit">
    <input type = "hidden" name = "guestId" value = <?php echo substr($_SERVER['REQUEST_URI'],strpos($_SERVER['REQUEST_URI'],'=') +1);?> />
</form>
<!--<a href="http:\\localhost:8083\rsvp\rsvp_page.php">https://www.phere.com/rsvp/guest_id=%1001%</a>-->

<?php


//$invite="https://www.phere.com/rsvp/guest_id=%1001%";
//$temp=explode("%",$invite);

//echo $temp[1];

//$_SESSION['guest_id']=$temp[1];

?>

</body>

</html>