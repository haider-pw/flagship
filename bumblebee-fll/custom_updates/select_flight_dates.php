<?php
/**
 * Created by PhpStorm.
 * User: Syed Haider Hassan
 * Date: 12/6/2016
 * Time: 7:08 PM
 */
error_reporting(E_ALL &~ E_DEPRECATED);
mysql_connect('localhost', 'root', 'chocolate');
mysql_select_db ("cocoa_fll");

$flightDates_sql = "(SELECT id AS ID, arr_date AS FlightDate, 'Arrivals' AS FlightType FROM fll_arrivals WHERE arr_date != '0000-00-00' GROUP BY FlightDate  ORDER BY FlightDate DESC)
UNION ALL
(SELECT id AS ID, `dpt_date` AS FlightDate, 'Departures' AS FlightType FROM `fll_departures` WHERE dpt_date != '0000-00-00' GROUP BY FlightDate ORDER BY FlightDate DESC)";
$flightDates = mysql_query($flightDates_sql);

$flightDatesArray = array();
while ($row = mysql_fetch_array($flightDates)) {
    $subArray = array(
        'ID' => $row['ID'],
        'FlightDate' => $row['FlightDate']
    );
    //Setup the keys, if they don't exist
    if($row['FlightType'] === 'Arrivals'){
        if(!array_key_exists('Arrivals',$flightDatesArray)){
            $flightDatesArray['Arrivals'] = array();
        }
        //push the sub array to the arrivals array.
        array_push($flightDatesArray['Arrivals'],$subArray);
    }elseif ($row['FlightType'] === 'Departures'){
        if(!array_key_exists('Departures',$flightDatesArray)){
            $flightDatesArray['Departures'] = array();
        }
        //push the sub array to the departures array.
        array_push($flightDatesArray['Departures'],$subArray);
    }
//    print_r($row);
//    exit;
}


//print_r($flightDatesArray);
function sortFunction( $a, $b ) {
    return strtotime($a["FlightDate"]) - strtotime($b["FlightDate"]);
}

//Now just echo the select options.
if($flightDatesArray['Arrivals'] and is_array($flightDatesArray['Arrivals'])){
    usort($flightDatesArray['Arrivals'], "sortFunction");
    echo ' <optgroup data-label="Arrivals" label="Flight Arrival Dates">';
    ///Need to check if we have some set values.
    if(isset($selectedDate) and isset($selectedRepType) and $selectedRepType==='Arrivals'){
        $selectedValue = 'selected="selected"';
    }
    foreach($flightDatesArray['Arrivals'] as $key=>$subArray){
        echo '<option value="'.$subArray['ID'].'" '.((isset($selectedDate) and(strtotime($selectedDate)===strtotime($subArray['FlightDate'])))?$selectedValue:'').'>'.date('d-M-Y',strtotime($subArray['FlightDate'])).'</option>';
    }
    echo '</optgroup>';
}

if($flightDatesArray['Departures'] and is_array($flightDatesArray['Departures'])) {
    usort($flightDatesArray['Departures'], "sortFunction");
    echo ' <optgroup data-label="Departures" label="Flight Departures Dates">';
    foreach ($flightDatesArray['Departures'] as $key => $subArray) {
        echo '<option value="' . $subArray['ID'] . '">' .date('d-M-Y',strtotime($subArray['FlightDate'])). '</option>';
    }
    echo '</optgroup>';
}