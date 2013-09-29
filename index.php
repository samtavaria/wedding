<html>
<head>


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
<?php

if(isset($_POST['myResult'])) {
	echo $_POST['myResult'];
	
	?>
	<script type="text/javascript">
	document.getElementById('groom').value = "<?php echo $_POST['groom']; ?>"
	document.getElementById('bride').value = "<?php echo $_POST['bride']; ?>"
	</script>
	<?
}
else {

	?>

<div  id = "mySource">
<form method = "POST" action = "<? echo $_SERVER['PHP_SELF']; ?>" onsubmit="duplicateThis()">
<input id = "bride" name = "bride" class = "bride" type = "text"  > <br />WEDS <br />
<input id = "groom"  class = "groom" name = "groom" type = "text"  value = > <br />
<input type = "hidden" id = "myResult" name = "myResult">
<input type = "submit" value = "Duplicate" >
</form>
</div>
<?php
}
?>
<input type = "button" value = "changeColor" onClick = "makeBold()">

</body>
</html>
