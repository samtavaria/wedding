<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 9/29/13
 * Time: 5:14 PM
 * To change this template use File | Settings | File Templates.
 */
include_once("DatabaseConnection.php");

DatabaseConnection::setCss($_POST['myresult']);
header("Location: index.php");