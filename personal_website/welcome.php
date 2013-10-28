
<?php 
include_once('../model/PersistentDatabaseConnection.php');
//Note: Should already be connected to DB through the page this is on
$event_data = DatabaseConnection::getEventData();
$basic_data = DatabaseConnection::getWebsiteData();
?>
	
<h3 class="sectionTitle">Welcome</h3>
<div class="contentImg">
	<div id="imgWrap">
	    <p> Picture of Couple goes here </p>
		
	</div>
</div>

<div id="text_date">
	<div id="dateAndCountdown">
		<?php
			foreach($event_data as $event)
			{
				echo "Event: " . $event['event_name'] . " <br/>&nbsp&nbspDate: " . $event['date'] . "<br/>";
			}
			?>
	
	</div>
</div>

<div class="mainTest">
	<p><?php echo $basic_data['welcome_text']; ?></p>
	<div class="spacer"></div>
</div>


