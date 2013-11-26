
<html>
<head>
<SCRIPT TYPE="text/javascript">
function validate(form) {
var e = form.elements;

/* Your validation code. */
if(e['password'].value != e['cpassword'].value) {
alert('Your passwords do not match. Please type more carefully.');
return false;
}
return true;
}

</SCRIPT>

<?php

session_start();

$email=$_GET['email'];
$_SESSION['name'] =$email;

?>
</head>

<body background = media/website_images/body.jpg>

<table width="350" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td><form name="form1" method="post" action="insert_pwd.php">
<table width="100%" border="0" cellspacing="4" cellpadding="0">


<tr>
<td>Password</td>
<td>:</td>
<td><input name="password" type="password" id="password" size="30" required></td>
</tr>
<tr>
<td>Re-enter Password</td>
<td>:</td>
<td><input name="cpassword" type="password" id="cpassword" size="30" required></td>
</tr>

<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td><input type="submit" name="submit" value="Send"> &nbsp;

</tr>
</table>
</form></td>
</tr>
</table>

</body>


</html>
