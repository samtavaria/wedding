<?php
include_once('model/PersistentDatabaseConnection.php');
DatabaseConnection::connectToDatabase();

if (!isset($_SESSION['cid']) || empty($_SESSION['cid'])) {
    echo "Please Log in again";
    exit;
}
//$couple = DatabaseConnection::getCouple();

$data = $_POST;

$data['c_id'] = $_SESSION['cid'];
DatabaseConnection::addRokaEventData($data);

?>