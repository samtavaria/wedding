
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>
	<?php include 'Common/header.php'; ?>
</head>
<body>

    <div id="mainPageContainer" class="pageContainer">
	
        <div id="container">

			<?php include 'Common/bookmarkShare.php'; ?>
			
            <div id="content">
				<h1 id="header">
					<p id="coupleTitle">Kelly & Kris </p>
				</h1>
				
				<?php include 'Common/menu.php'; ?>
				
                <div id="rightContent" class="left">
					<?php include 'Common/title.php'; ?>
					
                    <div id="main_content">
                        


                    </div>
                    <!-- end of right content-->
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
	</script>
</body>
</html>