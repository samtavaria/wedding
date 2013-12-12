<?php
include_once('model/PersistentDatabaseConnection.php');
DatabaseConnection::connectToDatabase();

if (!isset($_SESSION['cid']) || empty($_SESSION['cid'])) {
    echo "Please Log in again";
    exit;
}

$data = $_POST;
$data['c_id'] = $_SESSION['cid'];
$cid = $_SESSION['cid'];

DatabaseConnection::updateBrideAndGroomParentData($data, $cid);
// This is a quick and dirty hack that will be changed with MVC
$sql = "UPDATE Groom SET bio='" . $data['bio_for_him'] . "' WHERE c_id='" . $cid . "'";
mysql_query($sql);
$sql = "UPDATE Bride SET bio='" . $data['bio_for_her'] . "' WHERE c_id='" . $cid . "'";
mysql_query($sql);


DatabaseConnection::setWebsiteData($data);

?>