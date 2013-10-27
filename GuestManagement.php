<?php
include_once('model/PersistentDatabaseConnection.php');
?>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="css/wedding.css">
    <script type="text/javascript">
        function showGuestUpload() {
            document.getElementById('GuestUpload').style.display = "block";
            document.getElementById('GuestList').style.display = "none";
            document.getElementById('DeleteGuestList').style.display = "none";
        }

        function showGuestList() {
            document.getElementById('GuestUpload').style.display = "none";
            document.getElementById('DeleteGuestList').style.display = "none";
            document.getElementById('GuestList').style.display = "block";
        }
        function showDeleteGuestList() {
            document.getElementById('GuestUpload').style.display = "none";
            document.getElementById('GuestList').style.display = "none";
            document.getElementById('DeleteGuestList').style.display = "block";
        }

        function pageLoad() {
            document.getElementById('GuestUpload').style.display = "none";
            document.getElementById('GuestList').style.display = "none";
            document.getElementById('DeleteGuestList').style.display = "none";
        }

    </script>
</head>
<body background = "media/website_images/body.jpg" onload="pageLoad()">
<div id="GuestManagementMenu" style="float: left">
    <br/>
    <span  onClick="showGuestUpload()"> <img src = "media/button/UploadGuestList.png" /></span><br/><br/>
    <span onclick="showGuestList()"> <img src = "media/button/ViewGuestList.png" /></span><br/><br/>
    <span onclick="showDeleteGuestList()"> <img src = "media/button/DeleteGuestList.png" /></span>

</div>
<div id="GuestManagementData" style="float: left; margin-left: 30px">
    <div id="GuestUpload">
        <p>Please <a href="GuestDatabaseTemplate/guestData.csv">Click here</a> to download the fie where you can add
            your guest data</p>

        <form method="POST" action="GuestDatabaseUpload.php" enctype="multipart/form-data">
            Select File: <input type="file" name="guestDatabase" id="guestDatabase"/> <br/>
            <input type="submit" value="upload">
        </form>
    </div>
    <div id="GuestList">
        <?php
        $result = DatabaseConnection::getGuestlist();
       /// var_dump($result);
        echo '<table border = "1">';
        echo '<tr>';
        echo '<th>Side</th>';
        echo '<th>First Name</th>';
        echo '<th>Middle Name</th>';
        echo '<th>Last name</th>';
        echo '<th>Email</th>';
        echo '<th>Phone</th>';
        echo '<th>Mehndi Invite</th>';
        echo '<th>Sangeet Invite</th>';
        echo '<th>Haldi Invite</th>';
        echo '<th>Wedding Ceremony Invite</th>';
        echo '<th>Wedding Reception Invite</th>';
        echo '<th>Group</th>';
        echo '</tr>';
        foreach($result as $guest) {
            echo '<tr>';
            for($i = 3; $i <= 14; $i++) {
                echo '<td>';
                echo $guest[$i];
                echo '</td>';
            }
            echo '</tr>';
        }
        echo '</table>';
        ?>
    </div>
    <div id="DeleteGuestList">
        Please Note Clicking this button will remove ALL your guest from the database.<br/>
        Precede With Caution<br /><br />
        <form method = "POST" action = "GuestDatabaseDeletion.php">
            <input type = "submit" value = "Delete Guest Records" />
        </form>
    </div>


</div>
</body>
</html>