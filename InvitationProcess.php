<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 9/29/13
 * Time: 5:14 PM
 * To change this template use File | Settings | File Templates.
 */
include_once('PersistentDatabaseConnection.php');
DatabaseConnection::connectToDatabase();
//var_dump($_POST);
DatabaseConnection::setPosition($_POST);
DatabaseConnection::updateCoupleInformationFromInvitation($_POST);
header("Location: Invitation.php");