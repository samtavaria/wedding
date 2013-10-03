<?php
include_once('PersistentDatabaseConnection.php');
DatabaseConnection::connectToDatabase();

if(!isset($_SESSION['cid']) || empty($_SESSION['cid'])) {
    echo "Please Log in again";
    exit;
}
$couple = DatabaseConnection::getCouple();
//$customCss = base64_decode(DatabaseConnection::getCss());

?>

<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "wedding.css" />



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
<input id = "bride" name = "bride" class = "myInputBox" width="500px" onmouseover="this.style.width = ((this.value.length + 1) * 8) + 'px';" style = "outline:none" type = "text"  value = "<?php echo $couple[0]." ".$couple[1]." ".$couple[2]; ?>" > <br />WEDS <br />
<input id = "groom"  class = "myInputBox" name = "groom" width="500px" onmouseover="this.style.width = ((this.value.length + 1) * 8) + 'px';"  type = "text" value = "<?php echo $couple[3]." ".$couple[4]." ".$couple[5]; ?>" > <br />
<input type = "hidden" id = "myCss" name ="myCss">
<input type = "submit" value = "Save" >
</form>

</div>


<style id = "myStyle" type = "text/css">
<?php //echo $customCss;
?>

    </style>

<input type = "button" value = "changeColor" onClick = "changeColor()">

</body>
</html>
