<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 10/26/13
 * Time: 1:37 PM
 * To change this template use File | Settings | File Templates.
 */

include_once('model/PersistentDatabaseConnection.php');
class GuestDatabaseManagement {

    public function convertCsvFileToDatabase ($file_name) {
        //get data into a multi dimension array
        $dataList = (preg_split('/\n/', file_get_contents($file_name)));
        //discard first row since it is just the headings
        array_shift($dataList);
        $i = 0;
        //DatabaseConnection::deleteGuestListIfPresent();
        foreach($dataList as $dataRowList) {
            $dataRow = explode(',', $dataRowList);
            DatabaseConnection::insertGuestInfoIntoDatabase($dataRow, ++$i);

        }
    }



}