<?php

include('config.php');

// Passkey that got from link
$passkey=$_GET['passkey'];
$tbl_name1="temp_members_db";
$tbl_name2="Couple";
$tbl_name3="Groom";
$tbl_name4="Bride";

// Retrieve data from table where row that match this passkey
$sql1="SELECT * FROM $tbl_name1 WHERE confirm_code ='$passkey'";
$result1=mysql_query($sql1);


// If successfully queried
if($result1){

// Count how many row has this passkey
$count=mysql_num_rows($result1);


// if found this passkey in our database, retrieve data from table "temp_members_db"
if($count==1){

$rows=mysql_fetch_array($result1);


$g_first_name=$rows['g_first_name'];
$g_middle_name=$rows['g_middle_name'];
$g_last_name=$rows['g_last_name'];

$g_father_name=$rows['g_father_name'];
$g_mother_name=$rows['g_mother_name'];


$b_first_name=$rows['b_first_name'];
$b_middle_name=$rows['b_middle_name'];
$b_last_name=$rows['b_last_name'];

$b_father_name=$rows['b_father_name'];
$b_mother_name=$rows['b_mother_name'];

$username=$rows['username']; //email
$password=$rows['password'];
$country=$rows['country'];




// Insert data that retrieves from "temp_members_db" into table "registered_members"
$sql2="INSERT INTO {$tbl_name2} (username, password)VALUES('$username', '$password')";
mysql_query($sql2);
$cid = mysql_insert_id();
$result2=mysql_query($sql2);


$sql3="INSERT INTO {$tbl_name3} (c_id, g_first_name, g_middle_name, g_last_name, g_father_name, g_mother_name)VALUES('$cid', '$g_first_name', '$g_middle_name', '$g_last_name', '$g_father_name', '$g_mother_name')";
$result3=mysql_query($sql3);



$sql4="INSERT INTO {$tbl_name4} (c_id,b_first_name, b_middle_name, b_last_name, b_father_name, b_mother_name)VALUES('$cid','$b_first_name', '$b_middle_name', '$b_last_name', '$b_father_name', '$b_mother_name')";
$result4=mysql_query($sql4);


echo "Your account has been activated";
echo '<br>';
echo '<a href="index.php"> Please Login Again</a>';

// Delete information of this user from table "temp_members_db" that has this passkey
$sql5="DELETE FROM $tbl_name1 WHERE confirm_code = '$passkey'";
$result5=mysql_query($sql5);

}

// if not found passkey, display message "Wrong Confirmation code"
else {
echo "Wrong Confirmation code";
}
}
