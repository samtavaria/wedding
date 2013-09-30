<?php
include_once("DatabaseConnection.php");
DatabaseConnection::connectToDatabase();
$couple = DatabaseConnection::getCustomer();
$customCss = DatabaseConnection::getCss();
?>

<html>
<head>
    <script type = "text/javascript">
        var temp = '<?php echo $customCss; ?>';
        document.getElementById('mySource').innerHTML = temp;

    </script>


<script type = "text/javascript" >
function makeBold() {
	var elem = document.getElementById('groom');
	elem.setAttribute("style","font-weight: bold; background-color: yellow;float:left");
	 elem = document.getElementById('bride');
	elem.setAttribute("style","font-weight: bold; background-color: green;float:left");
}

function duplicateThis() {
	//alert(document.getElementById('bride').value);
	var temp = document.getElementById('mySource').innerHTML;
    //alert(temp);
	document.getElementById('myResult').value = temp;


	//var html = $(".mySource");
//var htmlString = html.html();
//localStorage.setItem('first',document.getElementById('bride').value);

//alert(htmlString);
//document.getElementById('target').innerHTML = temp;
//document.getElementById('groom').value = localStorage.getItem('first');
}
</script>
</head>

<body>



<div  id = "mySource">
<!--
<form method = "POST" action = "process.php" onsubmit="duplicateThis()">
<input id = "bride" name = "bride" class = "bride" type = "text"  value = "<?php echo $couple[0]; ?>" > <br />WEDS <br />
<input id = "groom"  class = "groom" name = "groom" type = "text" value = "<?php echo $couple[1]; ?>" > <br />
<input type = "hidden" id = "myResult" name = "myResult">
<input type = "submit" value = "Save" >
</form>
-->
</div>


<input type = "button" value = "changeColor" onClick = "makeBold()">

</body>
</html>
