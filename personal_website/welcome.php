
<?php
include_once('../model/PersistentDatabaseConnection.php');
//Note: Should already be connected to DB through the page this is on
//$event_data = DatabaseConnection::getEventData();
$basic_data = DatabaseConnection::getWebsiteData();
?>
	
<h3 class="sectionTitle">Welcome</h3>
<div class="contentImg">
	<div id="imgWrap">
	    <p> <img src="<?php echo "/media/website_images/" . $basic_data['img_path'] ?>"  height="300" width="300"> <br></p>
		
	</div>
</div>

<div id="text_date">
	<div id="dateAndCountdown">

	</div>
</div>

<div class="mainTest">
	<p><?php echo $basic_data['welcome_text']; ?></p>
	<div class="spacer"></div>
</div>


