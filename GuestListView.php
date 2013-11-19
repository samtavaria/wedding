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
                    if(strtolower($guest[9])  == 'yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                case 10 :
                    if(strtolower($guest[10])  == 'yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                case 11 :
                    if(strtolower($guest[11])  == 'yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                case 12 :
                    if(strtolower($guest[12])  == 'yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                case 13 :
                    if(strtolower($guest[13])  == 'yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                case 14 :
                    if(strtolower($guest[15])  == 'yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                case 15 :
                    if(strtolower($guest[16])  == 'yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                case 16 :
                    if(strtolower($guest[17])  == 'yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                case 17 :
                    if(strtolower($guest[18])  == 'yes') {
                        echo '<tr>';
                    self::_displayGuestRow($guest);
                    echo '</tr>';
                    }
                    break;
                case 18 :
                    if(strtolower($guest[19])  == 'yes') {
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