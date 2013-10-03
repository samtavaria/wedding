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

        if (!mysql_select_db("team12")) {
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




        $row = mysql_fetch_assoc($result);
        return $row['css'];

    }

    public static function setCss($base64EncodedCss) {
        echo $base64EncodedCss;
        $sql = "insert into custom_css values ('', '".$base64EncodedCss."')";
        $result = mysql_query($sql);
        var_dump($result);
    }

public static function getCouple() {


$cid = $_SESSION['cid'];

$sql = "SELECT Bride.b_first_name, Bride.b_middle_name, Bride.b_last_name, Groom.g_first_name, Groom.g_middle_name, Groom.g_last_name from Couple, Bride, Groom where ";
    $sql.="Couple.c_id ="."'$cid'"." and Couple.b_id = Bride.b_id and Couple.g_id = Groom.g_id";



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
    $couple[] = $row['b_first_name'];
    $couple[] = $row['b_middle_name'];
    $couple[] = $row['b_last_name'];
    $couple[] = $row['g_first_name'];
    $couple[] = $row['g_middle_name'];
    $couple[] = $row['g_last_name'];

}

mysql_free_result($result);
    return $couple;

}
}