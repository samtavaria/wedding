<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 10/20/13
 * Time: 3:19 PM
 * To change this template use File | Settings | File Templates.
 */

session_start();
include_once('return_homepage.php');

if (!isset($_SESSION['cid']) || empty($_SESSION['cid'])) {
    echo " Your credentials are invalid or your session has timed out.<br /> Please login again to continue<br />";
    echo '<a href = "index.php">Login</a>';
    exit;
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Home Page</title>
        <style type="text/css">
    h1{
    font-size: 20px
            }
            h2{
    font-size: 16px;
                color: red;
            }
            pre{
    padding: 4px;
                border: #F90 dotted 1px;
            }
        </style>
        <link href="css/images_hover_move.css" rel="stylesheet" type="text/css" />
        <!--script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <script src="javascript/images_hover_move.js"></script>
        <script language="javascript" type="text/javascript">
    $(function() {
        $("#images_hover_move").images_hover_move({
                    window_width: '600',//slideshow window width
                    window_height: '190',//slideshow window height
                    border_color: '#999',
                    title_color: '#333',
                    title_background_color: '#CCC',
                    background_color: '#f5f5f5'
                });

            });
        </script>
    </head>
    <body background="images/background.jpg">
    	<div id="heady">Start planning our Wedding Day...</div>
        <div id="images_hover_move" class="images_hover_move">
            <ul>
                <li><a href="TemplateSelection.php"><img src="images/slideshow_large_1.jpg" title="Invitation Card Design" wdith="259" height="194" /></a></li>
                <li><a href="GuestManagement.php"><img src="images/slideshow_large_2.jpg" title="Guest Management" wdith="259" height="194" /></a></li>
                <li><a href="personal_website/index.php"><img src="images/slideshow_large_3.jpg" title="Personal Website" wdith="203" height="203" /></a></li>
                <li><a href="survey.php"><img src="images/slideshow_large_4.jpg" title="Survey" wdith="259" height="194" /></a></li>
                <li><a href="email_page.php"><img src="images/slideshow_large_5.jpg" title="Email Guest Invitations" wdith="259" height="194" /></a></li>
            </ul>
        </div>


