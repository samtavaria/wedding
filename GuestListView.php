<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 11/15/13
 * Time: 1:21 PM
 * To change this template use File | Settings | File Templates.
 */

class GuestListView {

    public static function getListView() {
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
    }

}