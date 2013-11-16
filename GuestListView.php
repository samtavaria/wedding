<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kayomars
 * Date: 11/15/13
 * Time: 12:43 PM
 * To change this template use File | Settings | File Templates.
 */
include_once('model/PersistentDatabaseConnection.php');

class GuestListView
{

    public static function viewGuestList($ceremony = '')
    {

        $result = DatabaseConnection::getGuestlist();
        //var_dump($result);

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

        foreach ($result as $guest) {
            switch ($ceremony) {
                case 9 :
                    if($guest[9] == 'Yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                case 10 :
                    if($guest[10] == 'Yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                case 11 :
                    if($guest[11] == 'Yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                case 12 :
                    if($guest[12] == 'Yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                case 13 :
                    if($guest[13] == 'Yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                default :
                    echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    break;


            }

    }
        echo '</table>';

    }


    private static function _displayGuestRow($guest) {
        for($i = 3; $i <= 14; $i++) {
            echo '<td>';
            echo $guest[$i];
            echo '</td>';
        }
    }
}