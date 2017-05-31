<?php
//Pre Defined Settings.
define("_VALID_PHP", true);
require_once("../../admin-panel-fll/init.php");

if(empty($_POST)){
    //Just Return him back to his previous page. with some message.
}


    $postItems = [];
    foreach($_POST as $postedItem){
        if(!empty($postedItem['value'])){
            $postedItemArray = explode('.',$postedItem['name']);
            $postedItemBackTicks = '`'.implode('`.`',$postedItemArray).'`';
            $postItems[] = $postedItemBackTicks;
        }//End of If Statement
    }//End of Foreach Statement.


$query = 'SELECT ';
$selectData = implode(',',$postItems);
$query .= $selectData . ' From fll_reservations R';

$conn = mysqli_connect('localhost','root','chocolate','cocoa_fll');
$queryResource = mysqli_query($conn,$query);
echo '<pre>';
var_dump($queryResource);
echo '</pre>';

if(!empty($queryResource)){
    $TotalRows = mysqli_num_rows($queryResource);
}
if(isset($TotalRows) and $TotalRows > 0){
    // output data of each row
    $resultData = [];
    while($row = mysqli_fetch_assoc($queryResource)) {

        $resultData[] = $row;
    }
    if(!empty($resultData)){
        $columns = array_keys($resultData[0]);
        $columns = array_map(function($column){
            $column = str_replace('_', ' ', $column);
            $column = ucfirst($column);
            return $column;
        },$columns);
    }
}else{
    echo 'No Record Found';
}
mysqli_close($conn);

echo '<pre>';
var_dump($resultData);
echo '</pre>';











