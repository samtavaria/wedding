<?php

session_start();

$id=$_SESSION['guest_id'];

echo "guest_id from URL".$id."---------------------->";

?>

<html>
<head>
<title>RSVP</title>	
</head>

<body>

	<p align="center"><b>Note:</b> Please select 'Yes' or 'No' for the following events to RSVP:</p>

<form name="rsvp" id="rsvp" method="post" action="final.php">

<div align="center">
Haldi:<br/>
<input id="haldi1" type="radio" name="haldi" value="yes"/>Yes<br/>
<input id="haldi2" type="radio" name="haldi" value="no"/>No<br/>
</div><br/>



<div align="center">
Mehndi:<br/>
<input type="radio" name="mehndi" value="yes"/>Yes<br/>
<input type="radio" name="mehndi" value="no"/>No<br/>
</div><br/>


<div align="center">
Reception:<br/>
<input type="radio" name="reception" value="yes"/>Yes<br/>
<input type="radio" name="reception" value="no"/>No<br/>
</div><br/>
 
<div align="center">
Sangeet:<br/>
<input type="radio" name="sangeet" value="yes"/>Yes<br/>
<input type="radio" name="sangeet" value="no"/>No<br/>
</div><br/>
 
<div align="center">
Wedding ceremony:<br/>
<input type="radio" name="wedding_ceremony" value="yes"/>Yes<br/>
<input type="radio" name="wedding_ceremony" value="no"/>No<br/>
</div><br/>

<div align="center"><br>
<input type="submit" value="submit" name="submit"/>
</div>

</form>
</body>
</html>
