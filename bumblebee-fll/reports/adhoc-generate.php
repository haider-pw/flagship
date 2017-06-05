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

ini_set('memory_limit', '9999999999');
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
    $query .= ' LEFT JOIN fll_departures D on R.ref_no_sys = D.ref_no_sys';
}
if(strpos($selectData,'`A`')){
    $query .= ' LEFT JOIN fll_arrivals A on R.ref_no_sys = A.ref_no_sys';
}

if(isset($_REQUEST['sect']) && $_REQUEST['sect']=='fsft'){ 
    $query .= ' WHERE R.fast_track=1 && R.status!=2';
} else {
    $_REQUEST['sect'] = 'gh';
$query .= ' WHERE R.fast_track=0 && R.status!=2';
}

if(isset($_REQUEST['fromDate']) && isset($_REQUEST['toDate'])){

    $fromDate = strtotime($_REQUEST['fromDate']);
    $toDate = strtotime($_REQUEST['toDate']);
    $dateRangeText = date('M d, Y',$fromDate). ' - ' .date('M d, Y',$toDate);

    $fromDate = $_REQUEST['fromDate'];
    $toDate = $_REQUEST['toDate'];
    $query .= ' && (R.arr_date between CAST("'.$fromDate.'" AS DATE) AND CAST("'.$toDate.'" AS DATE))';
}

if(isset($_REQUEST['query'])){
    $searchText = $_REQUEST['query'];
    $query .= ' && (R.first_name LIKE "%'.$searchText.'%" || R.last_name LIKE "%'.$searchText.'%" || R.pnr LIKE "%'.$searchText.'%" || R.tour_operator LIKE "%'.$searchText.'%" || R.operator_code LIKE "%'.$searchText.'%" || R.tour_notes LIKE "%'.$searchText.'%" || R.flight_class LIKE "%'.$searchText.'%" || R.arr_transport LIKE "%'.$searchText.'%" || R.rep_type LIKE "%'.$searchText.'%" || R.client_reqs LIKE "%'.$searchText.'%" || R.dpt_transport LIKE "%'.$searchText.'%" || R.dpt_pickup LIKE "%'.$searchText.'%" || dpt_dropoff LIKE "%'.$searchText.'%" || dpt_notes LIKE "%'.$searchText.'%" || R.modified_by LIKE "%'.$searchText.'%" || R.arr_hotel_notes LIKE "%'.$searchText.'%" || R.dpt_transport_notes LIKE "%'.$searchText.'%")' ;
}

$query .= ' group by R.id, A.id, D.id, G.id';

//print_r($query); exit;
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















