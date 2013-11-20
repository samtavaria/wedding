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
            document.getElementById('GuestListMehndiRSVP').style.display = "none";
            document.getElementById('GuestListSangeetRSVP').style.display = "none";
            document.getElementById('GuestListHaldiRSVP').style.display = "none";
            document.getElementById('GuestListCeremonyRSVP').style.display = "none";
            document.getElementById('GuestListReceptionRSVP').style.display = "none";
            document.getElementById('GuestListViewOptions').style.display = "none";
            document.getElementById('DeleteGuestList').style.display = "none";
        }

        function showMehndi() {
            pageLoad();
            document.getElementById('GuestListViewOptions').style.display = "block";
            document.getElementById('GuestListMehndi').style.display = "block";
        }
        function showSangeet() {
            pageLoad();
            document.getElementById('GuestListViewOptions').style.display = "block";
            document.getElementById('GuestListSangeet').style.display = "block";
        }
        function showHaldi() {
            pageLoad();
            document.getElementById('GuestListViewOptions').style.display = "block";
            document.getElementById('GuestListHaldi').style.display = "block";
        }
        function showCeremony() {
            pageLoad();
            document.getElementById('GuestListViewOptions').style.display = "block";
            document.getElementById('GuestListCeremony').style.display = "block";
        }
        function showReception() {
            pageLoad();
            document.getElementById('GuestListViewOptions').style.display = "block";
            document.getElementById('GuestListReception').style.display = "block";
        }
        function showMehndiRSVP() {
            pageLoad();
            document.getElementById('GuestListViewOptions').style.display = "block";
            document.getElementById('GuestListMehndiRSVP').style.display = "block";
        }
        function showSangeetRSVP() {
            pageLoad();
            document.getElementById('GuestListViewOptions').style.display = "block";
            document.getElementById('GuestListSangeetRSVP').style.display = "block";
        }
        function showHaldiRSVP() {
            pageLoad();
            document.getElementById('GuestListViewOptions').style.display = "block";
            document.getElementById('GuestListHaldiRSVP').style.display = "block";
        }
        function showCeremonyRSVP() {
            pageLoad();
            document.getElementById('GuestListViewOptions').style.display = "block";
            document.getElementById('GuestListCeremonyRSVP').style.display = "block";
        }
        function showReceptionRSVP() {
            pageLoad();
            document.getElementById('GuestListViewOptions').style.display = "block";
            document.getElementById('GuestListReceptionRSVP').style.display = "block";
        }
        function showEntireList() {
            pageLoad();
            document.getElementById('GuestListViewOptions').style.display = "block";
            document.getElementById('GuestList').style.display = "block";
        }



        function myfun(x) {
            var ceremony = x+8;
            switch (ceremony) {
                case 9: showMehndi(); break;
                case 10: showSangeet(); break;
                case 11: showHaldi(); break;
                case 12: showCeremony(); break;
                case 13: showReception(); break;
                case 14: showMehndiRSVP(); break;
                case 15: showSangeetRSVP(); break;
                case 16: showHaldiRSVP(); break;
                case 17: showCeremonyRSVP(); break;
                case 18: showReceptionRSVP(); break;
                default: showEntireList();break
            }
        }

    </script>
</head>
<body background = "media/website_images/body.jpg" onload="pageLoad()">
<div id="GuestManagementMenu" style="float: left">
    <br/>
    <span  onClick="showGuestUpload()"> <img src = "media/button/UploadGuestList.png" /></span><br/><br/>
    <span onclick="showGuestList('')"> <img src = "media/button/ViewGuestList.png" /></span><br/><br/>
    <div id = "GuestListViewOptions" >
      <select onChange = "myfun(this.selectedIndex);">
          <option onClick = "showAll();">View All Guests</option>
          <option onClick = "showMehndi();">View Guests Invited to Mehndi</option>
          <option onClick = showSangeet()>View Guests Invited to Sangeet</option>
          <option onClick = showHaldi()>View Guests Invited to Haldi</option>
          <option onClick = showCeremony()>View Guests Invited to Ceremony</option>
          <option onClick = showReception()>View Guests Invited to Reception</option>
          <option onClick = "showMehndiRSVP();">View Guests who have RSVP's a yes to Mehndi</option>
          <option onClick = showSangeetRSVP()>View Guests who have RSVP's a yes to Sangeet</option>
          <option onClick = showHaldiRSVP()>View Guests who have RSVP's a yes to Haldi</option>
          <option onClick = showCeremonyRSVP()>View Guests who have RSVP's a yes to Ceremony</option>
          <option onClick = showReceptionRSVP()>View Guests who have RSVP's a yes to Reception</option>
      </select>
        <br />
    </div>
    <span onclick="showDeleteGuestList()"> <img src = "media/button/DeleteGuestList.png" /></span>

</div>
<div id="GuestManagementData" style="float: left; margin-left: 30px">
    <div id="GuestUpload">
        <p>Please <a href="GuestDatabaseTemplate/guestData.csv">Click here</a> to download the fie where you can add
            your guest data</p>
        <p> Please Note: While editing the file<br />1.If using Microsoft Excel pleade do not change the format while saving the file even though excel may ask you to do so<br />
            2.If using another editor like Libre Office or Open Office, click on seperate by comma If given such an option.
        </p>

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
    <div id="GuestListMehndiRSVP">
        <?php
        GuestListView::viewGuestList(14);
        ?>
    </div>
    <div id="GuestListSangeetRSVP">
        <?php
        GuestListView::viewGuestList(15);
        ?>
    </div>
    <div id="GuestListHaldiRSVP">
        <?php
        GuestListView::viewGuestList(16);
        ?>
    </div>
    <div id="GuestListCeremonyRSVP">
        <?php
        GuestListView::viewGuestList(17);
        ?>
    </div>
    <div id="GuestListReceptionRSVP">
        <?php
        GuestListView::viewGuestList(18);
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