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

    if(isset($_SESSION['adhoc_report'])) // check if report setting save in session, than use that
        $_POST = $_SESSION['adhoc_report'];
    if(isset($_REQUEST['report_id']) && !empty($_REQUEST['report_id'])) { 
    // for edit report , when user click on generated report button
        $result = mysqli_query($conn, "SELECT `setting` FROM fll_reports WHERE id=".$_REQUEST['report_id']);
        if(!empty($result)){
            $TotalRows = mysqli_num_rows($result);
        }
        if(isset($TotalRows) and $TotalRows > 0){
            $row = mysqli_fetch_row($result);
                // save setting in session, as well as in post variable that's used below
                $_POST = $_SESSION['adhoc_report'] = json_decode($row[0], true);
        } // end of if
    }
    } else {
        // save selected report fields(post data) in session, to use when reload
        $_SESSION['adhoc_report'] = $_POST;
    }

ini_set('memory_limit', '9999999999');
ini_set('max_execution_time', 0);
    $postItems = [];
   // $reportSettings = [];
    foreach($_POST as $postedItem){
        if(!empty($postedItem['value'])){
            if($postedItem['name']=='reportName') {
                // save report name in session, to use later when create pdf or save report
                $_SESSION['reportName'] = ucwords($postedItem['value']);
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

    if(strpos($selectData,'`AR`')){
        $query .= ' LEFT JOIN fll_arrivals_rooms AR on A.id = AR.arrival_id';
    }

    if(strpos($selectData,'`AT`')){
        $query .= ' LEFT JOIN fll_arrivals_transports AT on A.id = AT.arrival_id';
    }
}
if(strpos($selectData,'`I`')){
    $query .= ' LEFT JOIN fll_transfer I on R.ref_no_sys = I.ref_no_sys';
}
if(strpos($selectData,'`AD`')){
    $query .= ' LEFT JOIN fll_additional_transfer AD on R.ref_no_sys = AD.ref_no_sys';
}

if(isset($_REQUEST['sect']) && $_REQUEST['sect']=='fsft'){ 
    $query .= ' WHERE R.fast_track=1 && R.status!=2';
} else {
    $_REQUEST['sect'] = 'gh';
$query .= ' WHERE R.fast_track=0 && R.status!=2';
}


if(!isset($_REQUEST['fromDate']) || !isset($_REQUEST['toDate'])){
    if(isset($_SESSION['repFromDate'])){
        $_REQUEST['fromDate'] = $_SESSION['repFromDate'];
        $_REQUEST['toDate'] = $_SESSION['repToDate'];
    }
}

if(isset($_REQUEST['fromDate']) && isset($_REQUEST['toDate'])){
    $_SESSION['repFromDate'] = $_REQUEST['fromDate'];
    $_SESSION['repToDate'] = $_REQUEST['toDate'];

    $fromDate = strtotime($_REQUEST['fromDate']);
    $toDate = strtotime($_REQUEST['toDate']);
    $dateRangeText = date('M d, Y',$fromDate). ' - ' .date('M d, Y',$toDate);
    
    $fromDate = $_REQUEST['fromDate'];
    $toDate = $_REQUEST['toDate'];
    $query .= ' && (R.arr_date between CAST("'.$fromDate.'" AS DATE) AND CAST("'.$toDate.'" AS DATE))';
}

if(isset($_REQUEST['query'])){
    $searchText = $_REQUEST['query'];
     $query .= ' && (R.first_name LIKE "%'.$searchText.'%" || R.last_name LIKE "%'.$searchText.'%" || R.pnr LIKE "%'.$searchText.'%" || R.tour_operator LIKE "%'.$searchText.'%" || R.operator_code LIKE "%'.$searchText.'%" || R.tour_notes LIKE "%'.$searchText.'%" || R.flight_class LIKE "%'.$searchText.'%" || R.arr_transport LIKE "%'.$searchText.'%" || R.rep_type LIKE "%'.$searchText.'%" || R.client_reqs LIKE "%'.$searchText.'%" || R.dpt_transport LIKE "%'.$searchText.'%" || R.dpt_pickup LIKE "%'.$searchText.'%" || R.dpt_dropoff LIKE "%'.$searchText.'%" || R.dpt_notes LIKE "%'.$searchText.'%" || R.modified_by LIKE "%'.$searchText.'%" || R.arr_hotel_notes LIKE "%'.$searchText.'%" || R.dpt_transport_notes LIKE "%'.$searchText.'%")' ;
}
$query .= ' ORDER BY R.id';

//$sqlrows=mysqli_num_rows(mysqli_query($conn,$query));

//if(!isset($_REQUEST['all'])) 
  // $query .= ' LIMIT  '.$start.', '.$limit;

// echo $query; exit;
$queryResource = mysqli_query($conn,$query);

if(!empty($queryResource)){
    $TotalRows = mysqli_num_rows($queryResource);
}
if(isset($TotalRows) and $TotalRows > 0){
    // output data of each row
    $resultData = [];
    
    while($row = mysqli_fetch_assoc($queryResource)) {
        if(isset($row['Child'])){
            $child =$row['Child'];
            unset($row['Child']);
        }
        else $child = '-';
        if(isset($row['Infant'])){
            $infant = $row['Infant'];
            unset($row['Infant']);
        }
        else $infant = '-';
        if(isset($row['adult'])){
            $adult = $row['adult'];
            unset($row['adult']);
        }
        else $adult = '-';
        if($adult!='-'|| $child!='-'||$infant!='-'){
             $row['A_/_C_/_I'] = $adult.' / '.$child.' / '.$infant;
        }
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















