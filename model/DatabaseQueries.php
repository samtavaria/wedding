<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 9/29/13
 * Time: 3:51 PM
 * To change this template use File | Settings | File Templates.
 */
class DatabaseConnection
{
    function __construct()
    {
        parent::__construct();
    }

    public static function connectToDatabase()
    {
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

    public static function getCss()
    {

        $sql = "SELECT * from custom_css order by custom_css_id desc limit 1";

        $result = mysql_query($sql);

        if (!$result) {
            echo "Could not successfully run query ($sql) from DB: " . mysql_error();
            exit;
        }


        $row = mysql_fetch_assoc($result);
        return $row['css'];

    }

    public static function setCss($base64EncodedCss)
    {
        echo $base64EncodedCss;
        $sql = "insert into custom_css values ('', '" . $base64EncodedCss . "')";
        $result = mysql_query($sql);
        var_dump($result);
    }

    public static function getCouple()
    {


        $cid = $_SESSION['cid'];

        $sql = "SELECT Bride.b_first_name, Bride.b_middle_name, Bride.b_last_name, Groom.g_first_name, Groom.g_middle_name, Groom.g_last_name from  Bride, Groom where ";
        $sql .= "Bride.c_id =" . "'$cid'" ;
        $sql .= "and Groom.c_id =" . "'$cid'" ;


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

    public static function setInvitationBackground($cid, $background)
    {
        $sql = "insert into css values ('', '" . $cid . "', '" . $background . "', '')";
        $result = mysql_query($sql);
    }

    public static function getInvitationBackground($cid)
    {
        $sql = "select invitation_background from css where c_id = " . "'$cid'" . " order by css_id desc limit 1";
        $result = mysql_query($sql);
        $row = mysql_fetch_assoc($result);
        return $row['invitation_background'];
    }

    public static function setPosition($position) {
        $combinedPosition = $position['myCss'];
        $cid = $_SESSION['cid'];
        $sql = "insert into draggable values ('', '" . $cid . "','','','', '" . $combinedPosition . "')";
        mysql_query($sql);
    }

    public static function getPosition() {
        $cid = $_SESSION['cid'];
        $sql = "select all_positions from draggable where c_id = "."'$cid'". " order by draggable_id desc limit 1";
        $result = mysql_query($sql);
        $resultRow = mysql_fetch_assoc($result);
        return $resultRow;
    }

    public static function updateCoupleInformationFromInvitation($coupleInfo) {
        $cid = $_SESSION['cid'];
        $bride = explode(' ', $coupleInfo['bride']);
        $groom = explode(' ', $coupleInfo['groom']);
        $sql = "update Bride b set b.b_first_name = "."'$bride[0]'"." , b.b_middle_name = "."'$bride[1]'"." , b.b_last_name = "."'$bride[2]'"."  ";
        $sql.= " where b.c_id = "."'$cid'";
        $result = mysql_query($sql);
        $sql = "update Groom g set g.g_first_name = "."'$groom[0]'"." , g.g_middle_name = "."'$groom[1]'"." , g.g_last_name = "."'$groom[2]'"."  ";
        $sql.= " where g.c_id = "."'$cid'";
        $result = mysql_query($sql);

    }

    public static function insertGuestInfoIntoDatabase($dataRow, $counter) {

        $cid = $_SESSION['cid'];
        $sql = 'INSERT INTO Guest values(';
        $sql.= "'',";
        $sql.= "'C{$cid}G".$counter."',";
        $sql.= "'$cid'".',';
        if(sizeof($dataRow) != 12) {
            return;
        }
        foreach($dataRow as $value) {
            $value = addslashes(ucfirst(trim($value)));
            if(empty($value)) {
                $value = 'n/a';
            }
            $sql.= "'$value'".',';
        }
        //To take care of the rsvp columns which will be set to null initially
        for($i = 1; $i <= 5; $i++) {
            $sql.="'NULL',";
        }
        $sql = substr($sql, 0, strlen($sql)-1);
        $sql.=')';
        //echo $sql.'<br />';
        mysql_query($sql);//
        // dont die if duplicate entry avoid that row
        //or die(mysql_error());

    }

    public static function deleteGuestListIfPresent() {
        $cid = $_SESSION['cid'];
        //The below step is essential because if somehow cid is not set the query will remove data for all guests
        if(empty($cid) || ! isset($cid)) {
            $cid = 'asdf';
            echo "Please Login Again";
            exit;

        }
        $sql = "Delete from Guest where c_id = "."'$cid'";
        mysql_query($sql);
    }


    public static function getGuestlist() {
        $cid = $_SESSION['cid'];
        $sql = "Select * from Guest where c_id = " . "'$cid'" . " order by guest_group, first_name, middle_name, last_name";
        $result = mysql_query($sql);
        $guest = array();
        while($row = mysql_fetch_row($result)) {
            $guest[] = $row;
        }
        return $guest;
    }
	
		public static function getWebsiteData()
	{
		$cid = $_SESSION['cid'];
		$sql = "SELECT * from website_basic_info where c_id =" . "'$cid'";
		
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
		return $row;
	}

	public static function getEventData()
	{
		$cid = $_SESSION['cid'];
		$sql = "SELECT * from Event where c_id =" . "'$cid'";
		$result = mysql_query($sql);
		$events = array();
		while ($row = mysql_fetch_assoc($result)) {
			$events[] = $row;
		}
		return $events;
	}
	
	public static function addSangeetEventData($result)
	{
	    $cid = $_SESSION['cid'];
        $sql = "INSERT INTO event (" .
		        "`venue_name`, `venue_address`," .
				"`city`, `state`," .
				"`zipcode`, `parking`," . 
				"`date`, `event_name`," .
				"`attire`, `details`," .
				"`otherDetails`, `gift`, `c_id`)" .
				"VALUES ( " .
				"'" . $result['location'] . "'," .
				"'" . $result['street'] . "'," .
				"'" . $result['city'] . "'," .
				"'" . $result['state'] . "'," .
				"'" . $result['zipcode'] . "'," .
				"'" . $result['parking'] . "'," .
				"'" . $result['date'] . "'," .
				"'" . $result['eventType'] . "'," .
				"'" . $result['cloth'] . "'," .
				"'" . $result['details'] . "'," .
				"'" . $result['otherDetails'] . "'," .
				"'" . $result['gift'] . "'," .
				"'" . $result['c_id'] . "')";
				
				echo $sql;
        //echo $sql.'<br />';
        mysql_query($sql);//
        // dont die if duplicate entry avoid that row
        //or die(mysql_error());
	}
	
		public static function addHaldiEventData($result)
	{
	    $cid = $_SESSION['cid'];
        $sql = "INSERT INTO event (" .
		        "`venue_name`, `venue_address`," .
				"`city`, `state`," .
				"`zipcode`, `parking`," . 
				"`date`, `event_name`," .
				"`attire`, `details`," .
				"`otherDetails`, `gift`, `c_id`)" .
				"VALUES ( " .
				"'" . $result['location'] . "'," .
				"'" . $result['street'] . "'," .
				"'" . $result['city'] . "'," .
				"'" . $result['state'] . "'," .
				"'" . $result['zipcode'] . "'," .
				"'" . $result['parking'] . "'," .
				"'" . $result['date'] . "'," .
				"'" . $result['eventType'] . "'," .
				"'" . $result['cloth'] . "'," .
				"'" . $result['details'] . "'," .
				"'" . $result['otherDetails'] . "'," .
				"'" . $result['gift'] . "'," .
				"'" . $result['c_id'] . "')";
				
				echo $sql;
        //echo $sql.'<br />';
        mysql_query($sql);//
        // dont die if duplicate entry avoid that row
        //or die(mysql_error());
	}
	
	public static function addPhereEventData($result)
	{
	    $cid = $_SESSION['cid'];
        $sql = "INSERT INTO event (" .
		        "`venue_name`, `venue_address`," .
				"`city`, `state`," .
				"`zipcode`, `parking`," . 
				"`date`, `event_name`," .
				"`attire`, `details`," .
				"`otherDetails`, `gift`, `c_id`)" .
				"VALUES ( " .
				"'" . $result['location'] . "'," .
				"'" . $result['street'] . "'," .
				"'" . $result['city'] . "'," .
				"'" . $result['state'] . "'," .
				"'" . $result['zipcode'] . "'," .
				"'" . $result['parking'] . "'," .
				"'" . $result['date'] . "'," .
				"'" . $result['eventType'] . "'," .
				"'" . $result['cloth'] . "'," .
				"'" . $result['details'] . "'," .
				"'" . $result['otherDetails'] . "'," .
				"'" . $result['gift'] . "'," .
				"'" . $result['c_id'] . "')";
				
				echo $sql;
        //echo $sql.'<br />';
        mysql_query($sql);//
        // dont die if duplicate entry avoid that row
        //or die(mysql_error());
	}
	
	public static function addRokaEventData($result)
	{
	    $cid = $_SESSION['cid'];
        $sql = "INSERT INTO event (" .
		        "`venue_name`, `venue_address`," .
				"`city`, `state`," .
				"`zipcode`, `parking`," . 
				"`date`, `event_name`," .
				"`attire`, `details`," .
				"`otherDetails`, `gift`, `c_id`)" .
				"VALUES ( " .
				"'" . $result['location'] . "'," .
				"'" . $result['street'] . "'," .
				"'" . $result['city'] . "'," .
				"'" . $result['state'] . "'," .
				"'" . $result['zipcode'] . "'," .
				"'" . $result['parking'] . "'," .
				"'" . $result['date'] . "'," .
				"'" . $result['eventType'] . "'," .
				"'" . $result['cloth'] . "'," .
				"'" . $result['details'] . "'," .
				"'" . $result['otherDetails'] . "'," .
				"'" . $result['gift'] . "'," .
				"'" . $result['c_id'] . "')";
				
				echo $sql;
        //echo $sql.'<br />';
        mysql_query($sql);//
        // dont die if duplicate entry avoid that row
        //or die(mysql_error());
	}
	
	public static function getBrideData()
	{
		$cid = $_SESSION['cid'];
		$sql = "SELECT * from Bride where c_id =" . "'$cid'";
		$result = mysql_query($sql);
		$row = mysql_fetch_assoc($result);
		return $row;
	}
	
	public static function getGroomData()
	{
		$cid = $_SESSION['cid'];
		$sql = "SELECT * from Groom where c_id =" . "'$cid'";
		$result = mysql_query($sql);
		$row = mysql_fetch_assoc($result);
		return $row;
	}
}