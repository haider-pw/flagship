<?php
/**
 * Created by PhpStorm.
 * User: Syed Haider Hassan
 * Date: 12/6/2016
 * Time: 7:08 PM
 */
error_reporting(E_ALL &~ E_DEPRECATED);
if($_POST){
    //Date
    $selectedDate = $_POST['date'];
    $filterDate = date('Y-m-d',strtotime($selectedDate));
    //flight type
    $flightType =$_POST['type'];
    if($flightType){
        if($flightType === 'Arrivals'){
            $table = '`fll_arrivals` flight';
            $whereColumn = 'arr_date';
        }elseif($flightType === 'Departures'){
            $table = '`fll_departures` flight';
            $whereColumn = 'dpt_date';
        }
    }else{
        echo 'bad post';
        exit;
    }
}

mysql_connect('localhost', 'root', 'chocolate');
mysql_select_db ("cocoa_fll");

$selectedDateFlights_sql = "SELECT ff.id_flight AS flightNumberID, ff.flight_number  from $table INNER JOIN fll_flights ff ON `ff`.`id_flight` = flight.arr_flight_no where `$whereColumn` = '$filterDate' AND arr_flight_no != 0";
$selectedDateFlights_resource = mysql_query($selectedDateFlights_sql);
echo "<option value='0'>Select Flight Number</option>";
while ($row = mysql_fetch_array($selectedDateFlights_resource)) {
    echo "<option value='".$row['flightNumberID']."'>".$row['flight_number']."</option>";
}