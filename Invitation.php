<?php
include_once('PersistentDatabaseConnection.php');
DatabaseConnection::connectToDatabase();

if(!isset($_SESSION['cid']) || empty($_SESSION['cid'])) {
    echo "Please Log in again";
    exit;
}
$couple = DatabaseConnection::getCouple();
//$customCss = base64_decode(DatabaseConnection::getCss());
$backgroundImage = DatabaseConnection::getInvitationBackground($_SESSION['cid']);

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

    <script src="jquery-1.9.1.js"></script>
    <script src="jquery-ui.js"></script>
    <script type="text/javascript" src="farbtastic.js"></script>
    <script type="text/javascript" src="farbtastic/farbtastic.js"></script>
    <link rel="stylesheet" href="farbtastic/farbtastic.css" type="text/css" />

    <script type ="text/javascript" >


        $(document).ready(function()
        {
            $( "#bride" ).draggable( { cancel: '' } );
            $( "#groom" ).draggable( { cancel: '' } );
            $( "#weds" ).draggable( { cancel: '' } );
            $( "#library_img" ).draggable( { cancel: '' } );

        });

    </script>

</head>


<body>



<div  id = "mySource" style = "float:left">

<form method = "POST" action = "process.php" >
    <div id="draggable" class="ui-widget-content">
        <br />
        <br />
 <input id = "bride" style = "background-color: transparent" name = "bride" class = "myInputBox" width="500px" onmouseover="this.style.width = ((this.value.length + 1) * 8) + 'px';" style = "outline:none" type = "text"  value = "<?php echo $couple[0]." ".$couple[1]." ".$couple[2]; ?>" >

        <br />
        <div id = "weds" >WEDS </div>
        <br />


 <input id = "groom"  style = "background-color: transparent" class = "myInputBox" name = "groom" width="500px" onmouseover="this.style.width = ((this.value.length + 1) * 8) + 'px';"  type = "text" value = "<?php echo $couple[3]." ".$couple[4]." ".$couple[5]; ?>" > <br />
</div>
        <input type = "hidden" id = "myCss" name ="myCss">
<input type = "submit" value = "Save" >
    <img src = "invitation_card_backgrounds_preview/1.jpeg" id = "library_img">

</form>

</div>
<!--<input type="text" name="text_color" id="text_color" value=""/> -->
<div id = "myCanvas" style = "float: right; margin-right:30%">
    <div id="droppable" class="ui-widget-header">
    <img src = "<?php echo $backgroundImage; ?>" id = "card_background" height = "640" width = "720">
        </div>
</div>

<style id = "myStyle" type = "text/css">
<?php //echo $customCss;
?>

    </style>

<!--input type = "button" value = "changeColor" onClick = "changeColor()"-->
<div id="text_picker" style = "display: none"></div>
</body>
</html>
