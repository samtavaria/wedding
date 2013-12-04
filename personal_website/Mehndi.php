<?php
include_once('../model/PersistentDatabaseConnection.php');
//Note: Should already be connected to DB through the page this is on
$event_data = DatabaseConnection::getEventData();
//$basic_data = DatabaseConnection::getWebsiteData();
?>
<table border = "1">
    <th>Venue	</th>
    <th>Address	</th>
    <th>City 	</th>
    <th>State 	</th>
    <th>Zipcode 	</th>
    <th>Parking 	</th>
    <th>Date 	</th>
    <th>Event 	</th>
    <th>Specific Details 	</th>
    <th>Miscellaneous Details 	</th>
    <th>Venue Contact Number</th>
    <th>Attire 	</th>
    <th>Gift 	</th>

    <?php
    foreach($event_data as $event)
    { echo "<tr>";
        //echo "Event: " . $event['event_name'] . " <br/>&nbsp&nbspDate: " . $event['date'] . "<br/>";
        $i = 0;
        if(strtolower($event['event_name']) === strtolower('mehndi')) {
            foreach($event as $key => $value) {
                if($i !=0 && $i != sizeof($event) - 1) {
                    if($key === 'attire') {

                        $value = substr($value,strpos($value,'_') +1);
                    }
                    echo "<td>{$value}</td>";
                }
                $i++;
            }
        }
        echo '</tr>';


    }
    ?>
</table>