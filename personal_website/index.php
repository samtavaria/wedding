
<?php
include_once('../model/PersistentDatabaseConnection.php');
DatabaseConnection::connectToDatabase();

if (!isset($_SESSION['cid']) || empty($_SESSION['cid'])) {
    echo "Please Log in again";
    exit;
}
$couple = DatabaseConnection::getCouple();
$basic_data = DatabaseConnection::getWebsiteData();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="//www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>
	<?php include "Common/header.php" ?>
</head>
  <body>

		
        <div id="container">
			<?php include "Common/bookmarkShare.php"; ?>
			<?php include "Common/title.php"; ?>
			
            <div id="content">
				<h1 id="header">
					
				<span id="coupleNamesTitle">
				<?php echo "$couple[0] & $couple[3]"; ?>
				</span>

				</h1>

				<?php include "Common/menu.php" ?>
				
                <div id="rightContent">
					<div id='loadingDiv'>Loading...</div>
                    <div id="main_content">


                    </div>
                    <!-- end of right content-->
                </div>


            </div>
		</div>

				
            </div>
	
        </div>
	</div>

	<script>
	$( document ).ready(function() {
		$('#main_content').load('welcome.php');
		console.debug('loaded');
	});
	
	$(function(){
		$('#menu li a').on('click', function(e){
			e.preventDefault();
			var page_url=$(this).prop('href');
			$('#main_content').load(page_url);
		});
	});
	
	$('#loadingDiv')
    .hide()  // hide it initially
    .ajaxStart(function() {
        $(this).show();
    })
    .ajaxStop(function() {
        $(this).hide();
    })
;
	</script>
</body>
  </html>


