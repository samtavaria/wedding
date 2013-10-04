<?php
session_start();
if (!isset($_SESSION['cid']) || empty($_SESSION['cid'])) {
    echo " Your credentials are invalid or your session has timed out.<br /> Please login again to continue<br />";
    echo '<a href = "index.php">Login</a>';
    exit;
}
?>
<!DOCTYPE html>
<html>
<head>

    <script type="text/javascript">
        function showImage1() {
            document.getElementById('selectedBackground').src = "invitation_card_backgrounds/1.jpeg";
        }

        function showImage2() {
            document.getElementById('selectedBackground').src = "invitation_card_backgrounds/2.jpeg";
        }

        function showImage3() {
            document.getElementById('selectedBackground').src = "invitation_card_backgrounds/3.jpeg";
        }
        function setBackground() {
            document.getElementById('background').value = document.getElementById('selectedBackground').src;
        }
    </script>
</head>
<body>


<div id="Layout_Selection" style="float: left; width:40%">
    <p> Select a template</p></br>


    <img class="template_icon selected" title="Title 1" width="160" height="120"
         src="invitation_card_backgrounds_preview/1.jpeg" onmouseover="showImage1();"/>


    <img class="template_icon" title="Title 2" width="160" height="120" src="invitation_card_backgrounds_preview/2.jpeg"
         onmouseover="showImage2();"/>


    <img class="template_icon" title="Title 3" width="160" height="120" src="invitation_card_backgrounds_preview/3.jpeg"
         onmouseover="showImage3();"/>


    <form action="TemplateProcess.php" method="POST" onSubmit="setBackground()">
        <input type="hidden" id="background" name="background">
        <input type="submit" value="Submit">
    </form>

</div>
<div id="myPreview" style="float:left; width:60%">
    <img src="" id="selectedBackground" width="640" heigth="480">
</div>

</body>
</html>