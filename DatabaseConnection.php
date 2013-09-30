<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 9/29/13
 * Time: 3:51 PM
 * To change this template use File | Settings | File Templates.
 */
class DatabaseConnection {

public static function connectToDatabase() {
        $conn = mysql_connect("localhost", "root", "admin");

        if (!$conn) {
            echo "Unable to connect to DB: " . mysql_error();
            exit;
        }

        if (!mysql_select_db("wedding")) {
            echo "Unable to select mydbname: " . mysql_error();
            exit;
        }

    }

    public static function getCss() {

        $sql = "SELECT * from custom_css order by custom_css_id desc limit 1";

        $result = mysql_query($sql);

        if (!$result) {
            echo "Could not successfully run query ($sql) from DB: " . mysql_error();
            exit;
        }

        if (mysql_num_rows($result) == 0) {
            echo "No rows found, nothing to print so am exiting";
            exit;
        }


        $row = mysql_fetch_assoc($result);
        return base64_decode($row['css']);

    }

    public static function setCss($css) {
        $css = base64_encode($css);
        $sql = "insert into custom_css values (1, '".$css."')";
        $result = mysql_query($sql);
    }

public static function getCustomer() {




$sql = "SELECT * from customer";

$result = mysql_query($sql);

if (!$result) {
    echo "Could not successfully run query ($sql) from DB: " . mysql_error();
    exit;
}

if (mysql_num_rows($result) == 0) {
    echo "No rows found, nothing to print so am exiting";
    exit;
}

// While a row of data exists, put that row in $row as an associative array
// Note: If you're expecting just one row, no need to use a loop
// Note: If you put extract($row); inside the following loop, you'll
//       then create $userid, $fullname, and $userstatus
$couple = array();
while ($row = mysql_fetch_assoc($result)) {
    $couple[] = $row['customer_first_name']." ". $row['customer_last_name'];
}

mysql_free_result($result);
    return $couple;

}
}