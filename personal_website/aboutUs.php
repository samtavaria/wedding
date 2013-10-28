<<<<<<< HEAD
<?php 
include_once('../model/PersistentDatabaseConnection.php');
$bride_data = DatabaseConnection::getBrideData();
$groom_data = DatabaseConnection::getGroomData();
$meeting_data = DatabaseConnection::getWebsiteData();
?>

<h3 class="sectionTitle">About <?php echo $bride_data['b_first_name']; ?></h3>
<p> <?php echo $bride_data['bio']; ?> </p>
<div class="spacer"></div>

<h3 class="sectionTitle">About <?php echo $groom_data['g_first_name']; ?></h3>
<p> <?php echo $groom_data['bio']; ?> </p>
<div class="spacer"></div>

<h3 class="sectionTitle">How the Couple Met</h3>
<p> <?php echo $meeting_data['how_met_text']; ?> </p>
<div class="spacer"></div>
=======
<div>
	<h3 class="sectionTitle">About Bride</h3>
	<p> Info about the bride </p>
	
	<div class="spacer"></div>
	<h3 class="sectionTitle">About Groom</h3>
	<p> Info about the groom </p>
		
	<div class="spacer"></div>
	<h3 class="sectionTitle">How we met</h3>
	<p>How we met story</p>

	<div class="spacer"></div>
</div>
>>>>>>> d4bb5fcd550fc86d999e12b5bb07707711dd09ff
