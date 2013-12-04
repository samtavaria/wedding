<?php
include_once('model/PersistentDatabaseConnection.php');
include_once('return_homepage.php');
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 10/3/13
 * Time: 9:06 PM
 * To change this template use File | Settings | File Templates.
 */
//echo $_POST['background'];exit;
if(strpos($_POST['background'],'.jpeg') !== false) {
DatabaseConnection::updateUserSelectedImage($_SESSION['cid'], $_POST['background']);
}
header("Location: Invitation.php");
