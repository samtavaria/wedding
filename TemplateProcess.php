<?php
include_once('PersistentDatabaseConnection.php');
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 10/3/13
 * Time: 9:06 PM
 * To change this template use File | Settings | File Templates.
 */
var_dump($_POST);
DatabaseConnection::setInvitationBackground($_SESSION['cid'], $_POST['background']);
header("Location: Invitation.php");
