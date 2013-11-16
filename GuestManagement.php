<?php
include_once('model/PersistentDatabaseConnection.php');
include_once('GuestListView.php');
?>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="css/wedding.css">
    <script type="text/javascript">
        function showGuestUpload() {
            document.getElementById('GuestUpload').style.display = "block";
            document.getElementById('GuestList').style.display = "none";
            document.getElementById('GuestListViewOptions').style.display = "none";
            document.getElementById('DeleteGuestList').style.display = "none";
        }

        function showGuestList() {
            document.getElementById('GuestUpload').style.display = "none";
            document.getElementById('DeleteGuestList').style.display = "none";
            document.getElementById('GuestList').style.display = "block";
            document.getElementById('GuestListViewOptions').style.display = "block";
        }
        function showDeleteGuestList() {
            document.getElementById('GuestUpload').style.display = "none";
            document.getElementById('GuestList').style.display = "none";
            document.getElementById('GuestListViewOptions').style.display = "none";
            document.getElementById('DeleteGuestList').style.display = "block";
        }

        function pageLoad() {
            document.getElementById('GuestUpload').style.display = "none";
            document.getElementById('GuestList').style.display = "none";
            document.getElementById('GuestListMehndi').style.display = "none";
            document.getElementById('GuestListSangeet').style.display = "none";
            document.getElementById('GuestListHaldi').style.display = "none";
            document.getElementById('GuestListCeremony').style.display = "none";
            document.getElementById('GuestListReception').style.display = "none";
            document.getElementById('GuestListViewOptions').style.display = "none";
            document.getElementById('DeleteGuestList').style.display = "none";
        }

    </script>
</head>
<body background = "media/website_images/body.jpg" onload="pageLoad()">
<div id="GuestManagementMenu" style="float: left">
    <br/>
    <span  onClick="showGuestUpload()"> <img src = "media/button/UploadGuestList.png" /></span><br/><br/>
    <span onclick="showGuestList('')"> <img src = "media/button/ViewGuestList.png" /></span><br/><br/>
    <div id = "GuestListViewOptions" >
      <select>
          <option onClick = showAll()>View All Guests</option>
          <option onClick = showMehndi()>View Guests Invited to Mehndi</option>
          <option onClick = showSangeet()>View Guests Invited to Sangeet</option>
          <option onClick = showHaldi()>View Guests Invited to Haldi</option>
          <option onClick = showCeremony()>View Guests Invited to Ceremony</option>
          <option onClick = showReception()>View Guests Invited to Reception</option>
      </select>
        <br />
    </div>
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
        GuestListView::viewGuestList();
        ?>
    </div>
    <div id="GuestListMehndi">
        <?php
        GuestListView::viewGuestList(9);
        ?>
    </div>
    <div id="GuestListSangeet">
        <?php
        GuestListView::viewGuestList(10);
        ?>
    </div>
    <div id="GuestListHaldi">
        <?php
        GuestListView::viewGuestList(11);
        ?>
    </div>
    <div id="GuestListCeremony">
        <?php
        GuestListView::viewGuestList(12);
        ?>
    </div>
    <div id="GuestListReception">
        <?php
        GuestListView::viewGuestList(13);
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