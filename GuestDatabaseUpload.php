<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 10/20/13
 * Time: 4:24 PM
 * To change this template use File | Settings | File Templates.
 */
session_start();

if ($_FILES["guestDatabase"]["error"] > 0) {
    echo "<p>Whoops!  Seems there is some error in uploading the file.Here is what you can do<br />1. Try again<br />2. Make sure the file is less than 128MegaBytes<br /> It may be because there are a lot of people using our very popular(*winks) site. <br/> So please try again later</p>";
} else {

    move_uploaded_file($_FILES["guestDatabase"]["tmp_name"], '/opt/lampp/htdocs/wedding/tmp/GuestDatabase' . $_SESSION['cid'] . '.csv');
    echo "Your database is being built. Note this may take some time. DO NOT SUBMIT THE FILE AGAIN<br />";
    echo 'We will let you know when your process is successful';
}
