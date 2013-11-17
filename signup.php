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
</head>
<body>

<table width="350" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td><form name="form1" method="post" action="signup_ac.php" onsubmit="return validate(this)">
<table width="100%" border="0" cellspacing="4" cellpadding="0">
<tr>
<td colspan="3"><strong>Sign up</strong></td>
</tr>
<tr>
<td width="76">First Name of Groom</td>
<td width="3">:</td>
<td width="305"><input name="g_first_name" type="text" id="g_first_name" size="30"></td>
</tr>
<tr>
<td width="76">Middle Name of Groom</td>
<td width="3">:</td>
<td width="305"><input name="g_middle_name" type="text" id="g_middle_name" size="30"></td>
</tr>
<tr>
<td width="76">Last Name of Groom</td>
<td width="3">:</td>
<td width="305"><input name="g_last_name" type="text" id="g_last_name" size="30"></td>
</tr>
<tr>
<td width="76">Father Name of Groom</td>
<td width="3">:</td>
<td width="305"><input name="g_father_name" type="text" id="g_father_name" size="30"></td>
</tr>
<tr>
<td width="76">Mother Name of Groom</td>
<td width="3">:</td>
<td width="305"><input name="g_mother_name" type="text" id="g_mother_name" size="30"></td>
</tr>

<tr>
<td width="76">First Name of Bride</td>
<td width="3">:</td>
<td width="305"><input name="b_first_name" type="text" id="b_first_name" size="30"></td>
</tr>
<tr>
<td width="76">Middle Name of Bride</td>
<td width="3">:</td>
<td width="305"><input name="b_middle_name" type="text" id="b_middle_name" size="30"></td>
</tr>
<tr>
<td width="76">Last Name of Bride</td>
<td width="3">:</td>
<td width="305"><input name="b_last_name" type="text" id="b_last_name" size="30"></td>
</tr>
<tr>
<td width="76">Father Name of Bride</td>
<td width="3">:</td>
<td width="305"><input name="b_father_name" type="text" id="b_father_name" size="30"></td>
</tr>
<tr>
<td width="76">Mother Name of Bride</td>
<td width="3">:</td>
<td width="305"><input name="b_mother_name" type="text" id="b_mother_name" size="30"></td>
</tr>

<tr>
<td>E-mail</td>
<td>:</td>
<td><input name="username" type="text" id="username" size="30"></td>
</tr>

<tr>
<td>Password</td>
<td>:</td>
<td><input name="password" type="password" id="password" size="30"></td>
</tr>
<tr>
<td>Re-enter Password</td>
<td>:</td>
<td><input name="cpassword" type="password" id="cpassword" size="30"></td>
</tr>
<tr>
<td>Country</td>
<td>:</td>
<td><input name="country" type="text" id="country" size="30"></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td><input type="submit" name="Submit" value="Submit"> &nbsp;
<input type="reset" name="Reset" value="Reset"></td>
</tr>
</table>
</form></td>
</tr>
</table>


</body>
</html>