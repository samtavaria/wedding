<?php
 // TODO: This will populate the links based off which couple this is and what links they want
 
 $menu_array = array(
			"Welcome" => "welcome.php",
		    "About Us" => "aboutUs.php",
			"Our Proposal" => "ourProposal.php",
			"Ceremony" => "ceremony.php",
			"Reception" => "reception.php",
			//"Wedding Party" => "weddingParty.php",
			//"Our Registries" => "ourRegistries.php",
			"Guest Information" => "guestInformation.php",
			"Photo Album" => "photoAlbum.php",
			//"Guest Book" => "guestBook.php",
			"RSVP" => "rsvp.php",
			//"Honeymoon" => "honeymoon.php",
			"Wedding Party" => "weddingParty.php",
			"Our Registries" => "ourRegistries.php",
			"Guest Information" => "guestInformation.php",
			"Photo Album" => "photoAlbum.php",
			"Guest Book" => "guestBook.php",
			"RSVP" => "rsvp.php",
			"Honeymoon" => "honeymoon.php",
			"Map of Events" => "mapOfEvents.php"
			);
 ?>
<div id='navLeft'>
	<div class='bookendtop'>
	</div>
	<div id='cssmenu'>
		<ul id='menu'>

<?php
foreach($menu_array as $key => $value)
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
