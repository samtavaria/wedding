<?php

include_once('model/PersistentDatabaseConnection.php');
include_once('return_homepage.php');
$gid =  substr($_SERVER['REQUEST_URI'],strpos($_SERVER['REQUEST_URI'],'=') +1);
//$_SESSION['gid']=$gid;

//echo "guest_id from URL".$gid."---------------------->";

$conn = mysql_connect("localhost", "root", "admin");

        if (!$conn) {
            echo "Unable to connect to DB: " . mysql_error();
            exit;
        }

        if (!mysql_select_db("team12")) {
            echo "Unable to select mydbname: " . mysql_error();
            exit;
        }

?>

<html>
<head>
<script>

function check() {
    var r = document.getElementsByName("mehndi");
    var r1 = document.getElementsByName("sangeet");
    var r2 = document.getElementsByName("haldi");
    var r3 = document.getElementsByName("wedding_ceremony");
    var r4 = document.getElementsByName("reception");
    var c = 0;
    var flag=0;
    var flag1=0;
    var flag2=0;
    var flag3=0;
    var flag4=0;
    for(var i=0; i < r.length; i++)
       {
         if(r[i].checked) 
           {
          flag=1;
          break;
           }            
       }



   if(flag==0 && r.length!=0)
      {
        alert("please respond for mehndi");
        return false;
      }


for(var i=0; i < r1.length; i++)
       {
         if(r1[i].checked) 
           {
          flag1=1;
          break;
           }            
       }

   if(flag1==0 && r1.length!=0)
      {
        alert("please respond for sangeet");
        return false;
      }




for(var i=0; i < r2.length; i++)
       {
         if(r2[i].checked) 
           {
          flag2=1;
          break;
           }            
       }

   if(flag2==0 && r2.length!=0)
      {
        alert("please respond for haldi");
        return false;
      }



for(var i=0; i < r3.length; i++)
       {
         if(r3[i].checked) 
           {
          flag3=1;
          break;
           }            
       }

   if(flag3==0 && r3.length!=0)
      {
        alert("please respond for wedding_ceremony");
        return false;
      }


for(var i=0; i < r4.length; i++)
       {
         if(r4[i].checked) 
           {
          flag4=1;
          break;
           }            
       }

   if(flag4==0 && r4.length!=0)
      {
        alert("please respond for reception");
        return false;
      }


return true;
}
</script>	
<title>RSVP</title>	
</head>

<body background = "media/website_images/body.jpg">

	<p align="center"><b>Note:</b> Please select 'Yes' or 'No' for the following events to RSVP:</p>

<form name="rsvp" id="rsvp" method="POST" action="final.php" onsubmit="return check();">


<?php
/*$query="SELECT mehndi, sangeet, haldi, wedding_ceremony, reception FROM  Guest WHERE g_id ='$gid'" ;
$sql = mysql_query($query) or die(mysql_error());
$row = mysql_fetch_assoc($sql);*/

//echo $sql;

//echo $gid;
$row = DatabaseConnection::getGuestData($gid);

if(strtolower($row['mehndi']) == 'yes')
{
?>
<div align="center">
Mehndi:<br/>
<input type="radio" name="mehndi" value="yes"/>Yes<br/>
<input type="radio" name="mehndi" value="no"/>No<br/>
</div><br/>
<?php
}
if(strtolower($row['sangeet']) == 'yes')
{
?>
<div align="center">
Sangeet:<br/>
<input type="radio" name="sangeet" value="yes"/>Yes<br/>
<input type="radio" name="sangeet" value="no"/>No<br/>
</div><br/>
<?php
}
if(strtolower($row['haldi']) == 'yes')
{
?>
<div align="center">
Haldi:<br/>
<input type="radio" name="haldi" value="yes"/>Yes<br/>
<input type="radio" name="haldi" value="no"/>No<br/>
</div><br/>
<?php
}
if(strtolower($row['wedding_ceremony']) == 'yes')
{
?>
<div align="center">
Wedding Ceremony:<br/>
<input type="radio" name="wedding_ceremony" value="yes"/>Yes<br/>
<input type="radio" name="wedding_ceremony" value="no"/>No<br/>
</div><br/>
<?php
}
if(strtolower($row['reception']) == 'yes')
{
?>
<div align="center">
Reception:<br/>
<input type="radio" name="reception" value="yes"/>Yes<br/>
<input type="radio" name="reception" value="no"/>No<br/>
</div><br/>4
<?php
}
?>

<div align="center"><br>
    <input type = "hidden" name = "gid" value = "<?php echo $gid; ?>" />
<input type="submit" value="submit" name="submit"/>
</div>
</form>
</body>
</html>
