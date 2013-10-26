<html>

<head>
    <link rel="stylesheet" type="text/css" href="css/wedding.css">
    <script type="text/javascript">
        function showGuestUpload() {
            document.getElementById('GuestUpload').style.display = "block";
            document.getElementById('GuestList').style.display = "none";
        }

        function showGuestList() {
            document.getElementById('GuestUpload').style.display = "none";
            document.getElementById('GuestList').style.display = "block";
        }

        function pageLoad() {
            document.getElementById('GuestUpload').style.display = "none";
            document.getElementById('GuestList').style.display = "none";
        }

    </script>
</head>
<body onload="pageLoad()">
<div id="GuestManagementMenu" style="float: left">
    <br/>
    <span  onClick="showGuestUpload()"> Upload Guest list</span><br/><br/>
    <span onclick="showGuestList()"> Show Guest List</span>
</div>
<div id="GuestManagementData" style="float: left; margin-left: 30px">
    <div id="GuestUpload">
        <p>Please <a href="GuestDatabaseTemplate/guestData.csv">Click here</a> to download the fie where you can add
            your guest data</p>

        <form method="POST" action="GuestDatabaseUpload.php">
            Select File: <input type="file" name="guestDatabase" id="guestDatabase"/> <br/>
            <input type="submit" value="upload">
        </form>
    </div>
    <div id="GuestList">
        <?php echo 'hii';
        ?>
    </div>
</div>
</body>
</html>