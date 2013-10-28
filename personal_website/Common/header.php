
<?php 
include_once('../model/PersistentDatabaseConnection.php');
$couple = DatabaseConnection::getCouple();
?>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<link rel='stylesheet' type='text/css' href='http://s7.addthis.com/css/addthis_widget.css' />
<link rel='stylesheet' type='text/css' href='Style/style.css' />
<link rel='stylesheet' type='text/css' href='Style/menu_style.css' />
<title>
	<?php echo "$couple[0] $couple[1] $couple[2] & $couple[3] $couple[4] $couple[5] Wedding Website";?>
</title>