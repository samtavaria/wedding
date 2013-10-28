<<<<<<< HEAD
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
		
=======
<h3 class="sectionTitle">Welcome</h3>
<div class="contentImg">
	<div id="imgWrap">
		<img id="coupleImage" src="http://universalwebsites.theknot.com.s3.amazonaws.com/UniversalWebsites/PageMainImage/5332655439701293/1977727/28254821/med/theknotphoto.jpg" style="border-width:0px;" />
>>>>>>> d4bb5fcd550fc86d999e12b5bb07707711dd09ff
	</div>
</div>

<div id="text_date">
	<div id="dateAndCountdown">
<<<<<<< HEAD
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

=======

		<span class="date">
			
		<span id="eventDate">June 14, 2014</span>

		</span>
		<span class="divider-partner" style="display:none">&#8226;</span>
		<span class="countdown">
			
		<span id="eventCountdown">230 days to go!</span>

		</span>
	
	</div>
</div>

<div class="contentText">
	<p>Personal Message!</p>
</div>
>>>>>>> d4bb5fcd550fc86d999e12b5bb07707711dd09ff

