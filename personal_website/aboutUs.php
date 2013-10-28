
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

