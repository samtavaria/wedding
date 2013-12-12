<?php
include_once('model/PersistentDatabaseConnection.php');
include_once('return_homepage.php');
DatabaseConnection::connectToDatabase();

if (!isset($_SESSION['cid']) || empty($_SESSION['cid'])) {
    echo "Please Log in again";
    exit;
}
$couple = DatabaseConnection::getCouple();
$customText = DatabaseConnection::getCustomInvitationText($_SESSION['cid']);

if(empty($customText)) {
    $customText = "You can enter custom text here";
}
//print_r($couple);exit;
//$customCss = base64_decode(DatabaseConnection::getCss());
//$backgroundImage = DatabaseConnection::getInvitationBackground($_SESSION['cid']);
$backgroundImageArray = DatabaseConnection::getUserSelectedImage($_SESSION['cid']);
$backgroundImage = $backgroundImageArray['image_path'];
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
    <script src="javascript/jquery.elastic.source.js"></script>
    <script type="text/javascript" src="media/farbtastic/farbtastic.js"></script>
    <link rel="stylesheet" href="media/farbtastic/farbtastic.css" type="text/css"/>

    <script type="text/javascript">


        $(document).ready(function () {

            brideposition = '';
            groomposition = '';
            wedsposition = '';
            libraryposition1 = '';
            libraryposition2= '';
            libraryposition3 = '';
            libraryposition4 = '';
            libraryposition5 = '';
            libraryposition6 = '';
            libraryposition7= '';
            libraryposition8= '';
            libraryposition9= '';
            libraryposition= '';
            brideParentsPosition = '';
            groomParentsPosition = '';
            customText1Position = '';



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

            $("#library_img2").draggable({
                cancel: '',
                drag: function (event, ui) {
                    libraryposition2 = ui.position;
                } });

            $("#library_img3").draggable({
                cancel: '',
                drag: function (event, ui) {
                    libraryposition3= ui.position;
                } });
            $("#library_img4").draggable({
                cancel: '',
                drag: function (event, ui) {
                    libraryposition4 = ui.position;
                } });
            $("#library_img5").draggable({
                cancel: '',
                drag: function (event, ui) {
                    libraryposition5 = ui.position;
                } });
            $("#library_img6").draggable({
                cancel: '',
                drag: function (event, ui) {
                    libraryposition6 = ui.position;
                } });
            $("#library_img7").draggable({
                cancel: '',
                drag: function (event, ui) {
                    libraryposition7 = ui.position;
                } });
            $("#library_img8").draggable({
                cancel: '',
                drag: function (event, ui) {
                    libraryposition8 = ui.position;
                } });
            $("#library_img9").draggable({
                cancel: '',
                drag: function (event, ui) {
                    libraryposition9 = ui.position;
                } });







            $("#groomParents").draggable({
                cancel: '',
                drag: function (event, ui) {
                    groomParentsPosition = ui.position;
                } });


        $("#brideParents").draggable({
                cancel: '',
                drag: function (event, ui) {
                    brideParentsPosition = ui.position;
                } });


                $("#customText1").draggable({
                cancel: '',
                drag: function (event, ui) {
                    customText1Position = ui.position;
                } });
            $("#customText1").elastic();

        });

    </script>

    <script type="text/javascript">


        function saveToDatabase() {
           // alert('fff');
            var temp = brideposition['top']+ ',';
                temp+= brideposition['left']+',';
                temp+= wedsposition['top']+',';
                temp+= wedsposition['left']+',';
                temp+= groomposition['top']+',';
                temp+= groomposition['left']+',';
                temp+= libraryposition['top']+',';
                temp+= libraryposition['left']+',';


                temp+= groomParentsPosition['top']+',';
                temp+= groomParentsPosition['left']+ ',';
            temp+= brideParentsPosition['top']+',';
            temp+= brideParentsPosition['left']+ ',';
                temp+= customText1Position['top']+ ',';
                temp+= customText1Position['left']+',';
            temp+= libraryposition2['top']+',';
            temp+= libraryposition2['left']+',';
            temp+= libraryposition3['top']+',';
            temp+= libraryposition3['left']+',';
            temp+= libraryposition4['top']+',';
            temp+= libraryposition4['left']+',';
            temp+= libraryposition5['top']+',';
            temp+= libraryposition5['left']+',';
            temp+= libraryposition6['top']+',';
            temp+= libraryposition6['left']+',';
            temp+= libraryposition7['top']+',';
            temp+= libraryposition7['left']+',';
            temp+= libraryposition8['top']+',';
            temp+= libraryposition8['left']+',';
            temp+= libraryposition9['top']+',';
            temp+= libraryposition9['left']+',';





           // alert('hi'+temp);
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
            <input id="groomParents"
                   style="background-color: transparent; border: none; position: absolute; top: <?php echo $position1[8]; ?>; left: <?php echo $position1[9]; ?>"
                   name="groomParents" width="500px"
             type="text"
            value="<?php echo $couple[8] . " and " . $couple[9] ; ?>">
            <br/>
            <input id="brideParents"
                   style="background-color: transparent; border: none; position: absolute; top: <?php echo $position1[10]; ?>; left: <?php echo $position1[11]; ?>"
                   name="brideParents" width="500px"
             type="text"
            value="<?php echo $couple[6] . " and " . $couple[7] ; ?>">
            <br/>

            <!-- Now addd custom text boxes" -->

            <textarea style ="background-color:transparent; border:none; resize: none; overflow: hidden;position: absolute;
                top: <?php echo $position1[12]; ?> ;left: <?php echo $position1[13]; ?>" id="customText1" name="customText1" rows="4" cols="240" wrap="physical"  ><?php echo $customText;?></textarea>

        </div>
        <input type="hidden" id="myCss" name="myCss">
        <input type="submit" value="Save">
        <img src="media/invitation_card_icons/image_1.jpg" height = "100" width = "100" id="library_img" style= "position: absolute;
            top: <?php echo $position1[6]; ?> ;left: <?php echo $position1[7]; ?>">
        <img src="media/invitation_card_icons/image_2.jpg" height = "100" width = "100" id="library_img2" style= "position: absolute;
            top: <?php echo $position1[14]; ?> ;left: <?php echo $position1[15]; ?>">
        <img src="media/invitation_card_icons/image_3.jpg" height = "100" width = "100" id="library_img3" style= "position: absolute;
            top: <?php echo $position1[16]; ?> ;left: <?php echo $position1[17]; ?>">
        <img src="media/invitation_card_icons/image_4.jpg" height = "100" width = "100" id="library_img4" style= "position: absolute;
            top: <?php echo $position1[18]; ?> ;left: <?php echo $position1[19]; ?>">
        <img src="media/invitation_card_icons/image_5.jpg" height = "100" width = "100" id="library_img5" style= "position: absolute;
            top: <?php echo $position1[20]; ?> ;left: <?php echo $position1[21]; ?>">
        <img src="media/invitation_card_icons/image_6.jpg" height = "100" width = "100" id="library_img6" style= "position: absolute;
            top: <?php echo $position1[22]; ?> ;left: <?php echo $position1[23]; ?>">
        <img src="media/invitation_card_icons/image_7.jpg" height = "100" width = "100" id="library_img7" style= "position: absolute;
            top: <?php echo $position1[24]; ?> ;left: <?php echo $position1[25]; ?>">
        <img src="media/invitation_card_icons/image_8.jpg" height = "100" width = "100" id="library_img8" style= "position: absolute;
            top: <?php echo $position1[26]; ?> ;left: <?php echo $position1[27]; ?>">
        <img src="media/invitation_card_icons/image_9.jpg" height = "100" width = "100" id="library_img9" style= "position: absolute;
            top: <?php echo $position1[28]; ?> ;left: <?php echo $position1[29]; ?>">

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
