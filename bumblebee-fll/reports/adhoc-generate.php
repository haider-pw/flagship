<?php
//Pre Defined Settings.



$start=0;
$limit=25;

if(isset($_GET['id']))
{
$id=$_GET['id'];
$start=($id-1)*$limit;
}
else {
    $id=1;
}

  
if(empty($_POST)){
    //Just Return him back to his previous page. with some message.
    $_POST = $_SESSION['adhoc_report'];
} else {
    $_SESSION['adhoc_report'] = $_POST;
}
/*echo '<pre>';
var_dump($_POST);
echo '</pre>';*/
ini_set('memory_limit', '934217759');

    $postItems = [];
    foreach($_POST as $postedItem){
        if(!empty($postedItem['value'])){
            $explodeAlias = explode('::', $postedItem['name']);
            $postedItemArray = explode('.',$explodeAlias[0]);
            //$postedItemArray = explode('.',$postedItem['name']);
            $postedItemBackTicks = '`'.implode('`.`',$postedItemArray).'`'.' as '. $explodeAlias[1];
            $postItems[] = $postedItemBackTicks;
        }//End of If Statement
    }//End of Foreach Statement.
  
function selectData($postItems){
    if(empty($postItems)){
        return false;
    }

    $selectData = [];
    foreach($postItems as $postItem){
        $explodedPostedItem = explode('.',$postItem);
        $columnName = end($explodedPostedItem);
        $totalItemsInExplodedArray = count($explodedPostedItem);
        $RelatedTable = $explodedPostedItem[$totalItemsInExplodedArray-2];
        $selectData[] = $RelatedTable.'.'.$columnName;
    }
    return implode(',', $selectData);
}

$query = 'SELECT ';

$selectData = selectData($postItems);

$query .= $selectData . ' FROM fll_reservations R';

if(strpos($selectData,'`G`')){
    $query .= ' LEFT JOIN fll_guest G on R.ref_no_sys = G.ref_no_sys';
}
if(strpos($selectData,'`D`')){
    $query .= ' LEFT JOIN fll_departures D on R.dpt_flight_no = D.dpt_flight_no';
}
if(strpos($selectData,'`A`')){
    $query .= ' LEFT JOIN fll_arrivals A on R.arr_flight_no = A.arr_flight_no';
}

$query .= ' WHERE R.fast_track=0 && R.status!=2';



$conn = mysqli_connect('localhost','root','chocolate','cocoa_fll');


$sqlrows=mysqli_num_rows(mysqli_query($conn,$query));

$query .= ' LIMIT  '.$start.', '.$limit;
$queryResource = mysqli_query($conn,$query);
/*$conn = mysql_connect('localhost','root','chocolate','cocoa_fll');
$queryResource = mysql_query($query);*/
/*echo '<pre>';
var_dump($queryResource); print_r(mysqli_error($conn));
echo '</pre>'; */

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















