<html>
<head>
<script type = "text/javascript">
    function formValidate() {
        if(document.getElementById('username').value.length == 0 || document.getElementById('password').value.length == 0) {
            alert("Username/Password not recognized");
            return false;
        }
    }
</script>
</head>
<body>
<form method = "POST" action = "LoginProcess.php" onsubmit="return formValidate();">
    Username:<br />
    <input type = "text" id = "username" name = "username" autocomplete="off"><br />
    Password: <br />
    <input type = "password" id = "password" name = "password" autocomplete="off"><br />
    <input type="submit" value = "submit">
    </form>
</body>
</html>