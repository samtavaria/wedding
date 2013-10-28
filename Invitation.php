<?php
include_once('model/PersistentDatabaseConnection.php');
DatabaseConnection::connectToDatabase();

if (!isset($_SESSION['cid']) || empty($_SESSION['cid'])) {
    echo "Please Log in again";
    exit;
}
$couple = DatabaseConnection::getCouple();
//$customCss = base64_decode(DatabaseConnection::getCss());
$backgroundImage = DatabaseConnection::getInvitationBackground($_SESSION['cid']);
$position = DatabaseConnection::getPosition();
$position1 = explode(',', $position['all_positions']);
//var_dump($position1);
?>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/wedding.css"/>


    <script type="text/javascript">

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

    <script src="javascript/jquery-1.9.1.js"></script>
    <script src="javascript/jquery-ui.js"></script>
    <script type="text/javascript" src="media/farbtastic/farbtastic.js"></script>
    <link rel="stylesheet" href="media/farbtastic/farbtastic.css" type="text/css"/>

    <script type="text/javascript">


        $(document).ready(function () {
            brideposition = '';
            groomposition = '';
            wedsposition = '';
            libraryposition = '';

            $("#bride").draggable({
                // options..
                cancel: '',
                drag: function (event, ui) {
                    brideposition = ui.position;
                }
            });
            $("#groom").draggable({
                cancel: '',
                drag: function (event, ui) {
                    groomposition = ui.position;
                } });
            $("#weds").draggable({
                cancel: '',
                drag: function (event, ui) {
                    wedsposition = ui.position;
                } });
            $("#library_img").draggable({
                cancel: '',
                drag: function (event, ui) {
                    libraryposition = ui.position;
                } });

        });

    </script>

    <script type="text/javascript">
        function saveToDatabase() {
            var temp = brideposition['top']+ ',';
                temp+= brideposition['left']+',';
                temp+= wedsposition['top']+',';
                temp+= wedsposition['left']+',';
                temp+= groomposition['top']+',';
                temp+= groomposition['left']+',';
                temp+= libraryposition['top']+',';
                temp+= libraryposition['left'];
            document.getElementById('myCss').value = temp;
        }
    </script>
</head>


<body background = "media/website_images/body.jpg">


<div id="mySource" style="float:left">

    <form method="POST" action="InvitationProcess.php" onsubmit="saveToDatabase()">
        <div id="draggable" class="ui-widget-content">
            <br/>
            <br/>
            <input id="bride"
                   style="background-color: transparent; border: none; position: absolute; top: <?php echo $position1[0]; ?>; left: <?php echo $position1[1]; ?>"
                   name="bride"
                   width="500px"
                    type="text"
                   value="<?php echo $couple[0] . " " . $couple[1] . " " . $couple[2]; ?>">


            <br/>

            <div id="weds" style=" position: absolute;
                top: <?php echo $position1[2]; ?>; left: <?php echo $position1[3]; ?>">WEDS</div>
            <br/>


            <input id="groom"
                   style="background-color: transparent; border: none; position: absolute; top: <?php echo $position1[4]; ?>; left: <?php echo $position1[5]; ?>"
                   name="groom" width="500px"
             type="text"
            value="<?php echo $couple[3] . " " . $couple[4] . " " . $couple[5]; ?>"> <br/>
        </div>
        <input type="hidden" id="myCss" name="myCss">
        <input type="submit" value="Save">
        <img src="media/invitation_card_icons/1.jpeg" id="library_img" style= "position: absolute;
            top: <?php echo $position1[6]; ?> ;left: <?php echo $position1[7]; ?>">

    </form>

</div>
<!--<input type="text" name="text_color" id="text_color" value=""/> -->
<div id="myCanvas" style="float: right; margin-right:30%">
    <div id="droppable" class="ui-widget-header">
        <img src="<?php echo $backgroundImage; ?>" id="card_background" height="640" width="720">
    </div>
</div>



<!--input type = "button" value = "changeColor" onClick = "changeColor()"-->
<div id="text_picker" style="display: none"></div>
</body>
</html>
