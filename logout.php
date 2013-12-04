<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 12/3/13
 * Time: 9:36 PM
 * To change this template use File | Settings | File Templates.
 */
include_once('model/PersistentDatabaseConnection.php');
session_unset();
header("location: index.php");