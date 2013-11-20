<?php
session_start();
if (!isset($_SESSION['cid']) || empty($_SESSION['cid'])) {
    echo " Your credentials are invalid or your session has timed out.<br /> Please login again to continue<br />";
    echo '<a href = "index.php">Login</a>';
    exit;
}
include_once('model/PersistentDatabaseConnection.php');
include_once('return_homepage.php');
DatabaseConnection::connectToDatabase();
$backgrounds = DatabaseConnection::getAllSystemInvitationBackgrounds();
?>
<!DOCTYPE html>
<html>
<head>

    <script type="text/javascript">
		<?php 
			foreach($backgrounds as $key=>$value)
			{
				echo "function showImage" . $key . "() {";
		?>
			document.getElementById('selectedBackground').src = "<?php echo $value['img_path']; ?>"; }
		<?php	
			}
		?>
		
		function setBackground() {
			document.getElementById('background').value = document.getElementById('selectedBackground').src;
        }

    </script>
</head>
<body background = "media/website_images/body.jpg">

<p style = "font-weight: bold; font-family: fantasy;font: fantasy"> Please make a selection from the following templates</p><br /><br />
<div id="Layout_Selection" style="float: left; width:40%">


	<?php

		foreach($backgrounds as $key => $value)
		{
			?>
			<img class="template_icon_selected" title=" <?php echo $value['name'] ?> " width="160" height="120"
				src=" <?php echo $value['ico_path']; ?> " onmouseover=" <?php echo "showImage" . $key . "()"; ?>" />
	<?php
		}
	?>

    <form action="TemplateProcess.php" method="POST" onSubmit="setBackground()">
        <input type="hidden" id="background" name="background">
        <br /><br />
        <input type="submit" value="Submit">
    </form>

</div>
<div id="myPreview" style="float:left; width:60%">
    <img src="" id="selectedBackground" width="640" heigth="480">
</div>

</body>
</html>