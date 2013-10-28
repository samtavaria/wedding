<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 10/27/13
 * Time: 4:07 PM
 * To change this template use File | Settings | File Templates.
 */
include_once('model/PersistentDatabaseConnection.php');
DatabaseConnection::deleteGuestListIfPresent();
header("location: GuestManagement.php");