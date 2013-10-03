<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 9/29/13
 * Time: 5:14 PM
 * To change this template use File | Settings | File Templates.
 */
include_once("DatabaseQueries.php");
DatabaseConnection::connectToDatabase();
var_dump($_POST);
DatabaseConnection::setCss(base64_encode($_POST['myCss']));
header("Location: Invitation.php");