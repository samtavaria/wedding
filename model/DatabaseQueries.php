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
        $conn = mysql_connect("team12.c28dqpxgij9r.us-east-1.rds.amazonaws.com", "team12wedding", "team_12_wedding");

        if (!$conn) {
            echo "Unable to connect to DB: " . mysql_error();
            exit;
        }

        if (!mysql_select_db("team12")) {
            echo "Unable to select mydbname: " . mysql_error();
            exit;
        }

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
		// This will be deprecated, leave for now and add new functionality
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

	public static function getAllSystemInvitationBackgrounds() 
	{
		$sql = "select * from invitation_background_images";
		$result = mysql_query($sql);
		
		$bg_images = array();
		while ($row = mysql_fetch_assoc($result)) {
			$bg_images[] = $row;
		}
		return $bg_images;
	}
	
	public static function getAllUserInvitationImages($cid) 
	{
		$sql = "select * from user_invitation_images WHERE c_id = " . "'$cid'";
		$result = mysql_query($sql);
		$row = mysql_fetch_assoc($result);
		return $row;
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
		$delSql = "DELETE FROM Event WHERE " .
		  "c_id = " . "'" . $result['c_id'] .
		  "' AND event_name = '" . $result['eventType'] . "'";
				  
        $sql = "INSERT INTO Event (" .
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
				
				echo $delSql;
				echo "<br>" . $sql;
				
        //echo $sql.'<br />';
		mysql_query($delSql);
        mysql_query($sql);//
        // dont die if duplicate entry avoid that row
        //or die(mysql_error());
	}
	
		public static function addHaldiEventData($result)
	{
	    $cid = $_SESSION['cid'];
		$delSql = "DELETE FROM Event WHERE " .
		  "c_id = '" . $result['c_id'] .
		  "' AND event_name = '" . $result['eventType'] . "'";
        $sql = "INSERT INTO Event (" .
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
		
		echo $delSql;
		echo "<br>" . $sql;
				
        //echo $sql.'<br />';
		mysql_query($delSql);
        mysql_query($sql);//
        // dont die if duplicate entry avoid that row
        //or die(mysql_error());
	}
	
	public static function addPhereEventData($result)
	{
	    $cid = $_SESSION['cid'];
		$delSql = "DELETE FROM Event WHERE " .
		  "c_id = '" . $result['c_id'] .
		  "' AND event_name = '" . $result['eventType'] . "'";
        $sql = "INSERT INTO Event (" .
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
				
		echo $delSql;
		echo "<br>" . $sql;
				
        //echo $sql.'<br />';
		mysql_query($delSql);
        mysql_query($sql);//
        // dont die if duplicate entry avoid that row
        //or die(mysql_error());
	}
	
	public static function addRokaEventData($result)
	{
	    $cid = $_SESSION['cid'];
		$delSql = "DELETE FROM Event WHERE " .
		  "c_id = '" . $result['c_id'] .
		  "' AND event_name = '" . $result['eventType'] . "'";
		$delSql = "DELETE FROM Event WHERE " .
				  "c_id = " . $result['c_id'] .
				  "AND event_name = " . $result['eventType'];
		
		
        $sql = "INSERT INTO Event (" .
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
				
		echo $delSql;
		echo "<br>" . $sql;
				
        //echo $sql.'<br />';
		mysql_query($delSql);
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


    public static function insertTempregisterationData($confirm_code, $b_first_name, $b_middle_name, $b_last_name, $g_first_name, $g_middle_name, $g_last_name, $g_father_name, $g_mother_name, $b_father_name, $b_mother_name, $username, $password, $country)
    {
        $sql="INSERT into temp_members_db (confirm_code, b_first_name, b_middle_name, b_last_name, g_first_name, g_middle_name, g_last_name, g_father_name, g_mother_name, b_father_name, b_mother_name, username, password, country)VALUES($confirm_code, $b_first_name, $b_middle_name, $b_last_name, $g_first_name, $g_middle_name, $g_last_name, $g_father_name, $g_mother_name, $b_father_name, $b_mother_name, $username, $password, $country)";
        $result=mysql_query($sql);
        return $result;
    }

    public static function retrievePasskey()
    {
        $sql1="SELECT * from temp_members_db WHERE confirm_code ='$passkey'";
        $result1=mysql_query($sql1);
        return $result1;
    }

    public static function insertCoupletable($username, $password)
    {
        $sql2="INSERT into couple (username, password)";
        mysql_query($sql2);
        $cid = mysql_insert_id();
        $result2=mysql_query($sql2);
        return $result2;

    }

    public static function insertGroomtable($cid, $g_first_name, $g_middle_name, $g_last_name, $g_father_name, $g_mother_name)
    {
        $sql3="INSERT into Groom (c_id, g_first_name, g_middle_name, g_last_name, g_father_name, g_mother_name)";
        $result3=mysql_query($sql3);
        return $result3;

    }

    public static function insertBridetable($cid, $b_first_name, $b_middle_name, $b_last_name, $b_father_name, $b_mother_name)
    {
        $sql4="INSERT into Bride (c_id,b_first_name, b_middle_name, b_last_name, b_father_name, b_mother_name)";
        $result4=mysql_query($sql4);
        return $result4;


    }



    public static function getGuestData($gid)
    {
        $query="SELECT mehndi, sangeet, haldi, wedding_ceremony, reception FROM  Guest WHERE g_id ='$gid'" ;
        $sql = mysql_query($query) or die(mysql_error());
        $row = mysql_fetch_assoc($sql);
        return $row;
    }

    public static function updateRSVP($results)
    {


        if(!empty($results[0]))
        {
            mysql_query("update Guest set rsvp_mehndi='$results[0]' where g_id='$results[5]'");

        }

        else
            mysql_query("update Guest set rsvp_mehndi='N/A' where g_id='$results[5]'");


        if(!empty($results[1]))
        {
            mysql_query("update Guest set rsvp_sangeet='$results[1]' where g_id='$results[5]'");
           // echo $sangeet."------";
        }
        else
            mysql_query("update Guest set rsvp_sangeet='N/A' where g_id='$results[5]'");

        if(!empty($results[2]))
        {
            mysql_query("update Guest set rsvp_haldi='$results[2]' where g_id='$results[5]'");
           // echo $haldi."------";
        }

        else
            mysql_query("update Guest set rsvp_haldi='N/A' where g_id='$results[5]'");

        if(!empty($results[3]))
        {
            mysql_query("update Guest set rsvp_wedding_ceremony='$results[3]' where g_id='$results[5]'");
            //echo $wedding."------";

        }

        else
            mysql_query("update Guest set rsvp_wedding_ceremony='N/A' where g_id='$results[5]'");

        if(!empty($results[4]))
        {
            mysql_query("update Guest set rsvp_reception='$results[4]' where g_id='$results[5]'");
           // echo $reception."------";

        }
        else
            mysql_query("update Guest set rsvp_reception='N/A' where g_id='$results[5]'");

       // echo $gid."------";
    }
}

