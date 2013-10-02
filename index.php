<?php
include_once("DatabaseConnection.php");
DatabaseConnection::connectToDatabase();
$couple = DatabaseConnection::getCustomer();
$customCss = base64_decode(DatabaseConnection::getCss());

?>

<html>
<head>




<script type = "text/javascript" >
function changeColor() {
	//var elem = document.getElementById('groom');
	//elem.setAttribute("style","font-weight: bold; background-color: yellow;float:left");
	 //elem = document.getElementById('bride');
	//elem.setAttribute("style","font-weight: bold; background-color: green;float:left");
     document.getElementById('myStyle').innerHTML = "#bride {font-weight: bold; background-color: green; float:left} #groom {font-weight: bold; background-color: blue; float: left}";
        document.getElementById('myCss').value = document.getElementById('myStyle').innerHTML;
    //alert(document.getElementById('myCss'));
}

</script>
</head>

<body>



<div  id = "mySource">

<form method = "POST" action = "process.php" >
<input id = "bride" name = "bride" class = "bride" type = "text"  value = "<?php echo $couple[0]; ?>" > <br />WEDS <br />
<input id = "groom"  class = "groom" name = "groom" type = "text" value = "<?php echo $couple[1]; ?>" > <br />
<input type = "hidden" id = "myCss" name ="myCss">
<input type = "submit" value = "Save" >
</form>

</div>


<style id = "myStyle" type = "text/css">
<?php echo $customCss;
?>

    </style>

<input type = "button" value = "changeColor" onClick = "changeColor()">

</body>
</html>
