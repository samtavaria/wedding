<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 10/20/13
 * Time: 3:19 PM
 * To change this template use File | Settings | File Templates.
 */
session_start();
if (!isset($_SESSION['cid']) || empty($_SESSION['cid'])) {
    echo " Your credentials are invalid or your session has timed out.<br /> Please login again to continue<br />";
    echo '<a href = "index.php">Login</a>';
    exit;
}

echo '<body background = "media/website_images/body.jpg" >';
echo '<p> What do you wish to select</p>';

echo '<a href = "TemplateSelection.php"> Invitation card Design</a>'.'<br />';
echo '<a href = "GuestManagement.php"> Guest Management</a>'.'<br />';
echo '<a href = "personal_website/index.php"> Personal Website</a>'.'<br />';
echo '<a href = "survey.html"> Survey</a>'.'<br />';
echo '</body>';