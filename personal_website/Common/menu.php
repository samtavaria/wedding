<?php
 // TODO: This will populate the links based off which couple this is and what links they want
//^^^ Done baby done

include_once('../model/PersistentDatabaseConnection.php');
//Note: Should already be connected to DB through the page this is on
$event_data = DatabaseConnection::getEventData();

 
 $menu_array = array(
			"Welcome" => "welcome.php",
		    "About Us" => "aboutUs.php",
			//"Our Proposal" => "ourProposal.php",
			//"Reception" => "reception.php",
			//"Guest Information" => "guestInformation.php",
			//"Photo Album" => "photoAlbum.php",
			//"RSVP" => "rsvp.php",
			//"Wedding Party" => "weddingParty.php",
			//"Our Registries" => "ourRegistries.php",
			//"Guest Information" => "guestInformation.php",
			//"Photo Album" => "photoAlbum.php",
			//"Guest Book" => "guestBook.php",
			//"RSVP" => "rsvp.php",
			//"Honeymoon" => "honeymoon.php",
			//"Map of Events" => "mapOfEvents.php"
			);

/*
 * "Events" => "mehendi.php",
			"Events" => "sangeet.php",
            "Events" => "haldi.php",

            "Events" => "ceremony.php",
            "Events" => "reception.php",
 */
$coupleEvents = array();
foreach($event_data as $event) {

    foreach($event as $key => $value) {
   if($key === "event_name") {
       $coupleEvents[ucfirst($value)] = ucfirst($value).".php";
   }
}
}


$finalMenuArray = $menu_array + $coupleEvents;
 ?>
<div id='navLeft'>
	<div class='bookendtop'>
	</div>
	<div id='cssmenu'>
		<ul id='menu'>

<?php
foreach($finalMenuArray as $key => $value)
{
	echo "<li>
			<a class='menu' href='$value'>$key</a>
		  </li>";
}
?>
		</ul>
		</div>
		<div class='bookendbottom'>
		</div>
	</div>
