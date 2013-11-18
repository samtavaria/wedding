<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <style type="text/css">
        h1 {
            font-family: forte, cursive, Serif;
        }

        h1 {
            color: black
        }

        ;
        h1 {
            font-size: 50%
        }

        ;

    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>
        Create Free Wedding Websites | Sites with Indian Designs | </title>
</head>

<body class="home" background="media/website_images/emailer.jpg" style="background-repeat: no-repeat;-webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;">


<div align='center'>
    <h1><font size='100px'>Invite Your Guests</font></h1>
</div>
<?PHP
    $radio_1 = 'unchecked';
    $radio_2 = 'unchecked';
    $radio_3 = 'unchecked';
    $radio_4 = 'unchecked';
    $radio_5 = 'unchecked';
    if (isset($_POST['Submit1'])){
        $selected_radio = $_POST['emails'];
        if($selected_radio == 'radio1'){
            $radio_1 = 'checked';
        }
        else if($selected_radio == 'radio2'){
            $radio_2 = 'checked';
        }
        else if($selected_radio == 'radio3'){
            $radio_3 = 'checked';
        }
        else if($selected_radio == 'radio4'){
            $radio_4 = 'checked';
        }
        else if($selected_radio == 'radio5'){
            $radio_5 = 'checked';
        }
    }
?>

<br><br><br>

<div style="float: left; margin-left: 45%">
    <form method="POST" action="emailwquery.php" onsubmit="return formValidate();">
    Invite Guests According to Guest Lists:<br><br/>
        <input type="radio" name="emails" value="radio1">All Events they are Invited To<br>
        <input type="radio" name="emails" value="radio2">Event1<br>
        <input type="radio" name="emails" value="radio3">Event2<br>
        <input type="radio" name="emails" value="radio4">Event3<br>
        <input type="radio" name="emails" value="radio5">Event4<br><br>
        <input type="submit" name="Submit1" value="Invite Guests to Events">
    </form>
</div>

</body>

</html>
