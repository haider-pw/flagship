<?php
//Pre Defined Settings.
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

$conn = mysqli_connect('localhost','root','chocolate','cocoa_fll');

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

/*echo '<pre>';
print_r($_POST);
echo '</pre>'; exit;*/
  
if(empty($_POST)){
    //Just Return him back to his previous page. with some message.

    if(isset($_SESSION['adhoc_report']))
        $_POST = $_SESSION['adhoc_report'];
    if(isset($_REQUEST['report_id']) && !empty($_REQUEST['report_id'])) { // get report setting from database
        $result = mysqli_query($conn, "SELECT `setting` FROM fll_reports WHERE id=".$_REQUEST['report_id']);
        if(!empty($result)){
            $TotalRows = mysqli_num_rows($result);
        }
        if(isset($TotalRows) and $TotalRows > 0){
            $row = mysqli_fetch_row($result);
                $_POST = $_SESSION['adhoc_report'] = json_decode($row[0], true);
        } // end of if
    }
    } else {
        $_SESSION['adhoc_report'] = $_POST;
    }

ini_set('memory_limit', '-1');
ini_set('max_execution_time', 0);
    $postItems = [];
   // $reportSettings = [];
    foreach($_POST as $postedItem){
        if(!empty($postedItem['value'])){
            if($postedItem['name']=='reportName') {
                $_SESSION['reportName'] = $postedItem['value'];
            }
            else if($postedItem['name']=='reportId'){
                 $reportId = $postedItem['value'];
            }
            else {
               // array_push($reportSettings, $postedItem['name']);
                $explodeAlias = explode('::', $postedItem['name']);
                $postedItemArray = explode('.',$explodeAlias[0]);
                //$postedItemArray = explode('.',$postedItem['name']);
                $postedItemBackTicks = '`'.implode('`.`',$postedItemArray).'`'.' as '. $explodeAlias[1];
                $postItems[] = $postedItemBackTicks;
            }
        }//End of If Statement
    }//End of Foreach Statement.
//$_SESSION['report_settings'] = json_encode($reportSettings);
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

if(isset($_REQUEST['sect']) && $_REQUEST['sect']=='fsft'){ 
    $query .= ' WHERE R.fast_track=1 && R.status!=2';
} else 
$query .= ' WHERE R.fast_track=0 && R.status!=2';





$sqlrows=mysqli_num_rows(mysqli_query($conn,$query));

if(!isset($_REQUEST['all'])) 
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















