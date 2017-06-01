<style type="text/css">
    .list-group-item {
        /* position: relative; */
        display: block;
        padding: 10px 15px;
        margin-bottom: -1px;
        background-color: #fff;
         border: 0px !important;
    }
    .marginBotBox{
        margin-bottom: 25px;
    }
</style>
<?php
$url = '//' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']);
define("_VALID_PHP", true);
require_once("../admin-panel-fll/init.php");
if (!$user->levelCheck("3,5,6,7,9"))
    redirect_to("index.php");
$row = $user->getUserData();
?>
<?php
/**
 * @author Alvin Herbert
 * @copyright 2015
 */
include('ref.php');
include('fast_ref.php');
include('header.php');
include('select.class.php');
$countrycode = "FLL";
$fsref = "$countrycode-$flagship_ref";
$fastRef = "$countrycode-$flagship_fast_ref";
$loggedinas = $row->fname . ' ' . $row->lname;
site_header('Add Reservations');

?>


<?php include('profile.php'); ?>
<?php include('navigation.php'); ?>
<!-- END X-NAVIGATION -->
</div>
<!-- END PAGE SIDEBAR -->

<!-- PAGE CONTENT -->
<div class="page-content">
    <?php include('vert-navigation.php'); ?>
    <!-- START BREADCRUMB -->
    <ul class="breadcrumb">
        <li><a href="dashboard.php">Home</a></li>
        <li>Ground Handling</li>
        <li class="active">Add Hoc Report</li>
    </ul>
    <!-- END BREADCRUMB -->

    <!-- PAGE CONTENT WRAPPER -->
    <div class="page-content-wrap">
        <div class="row">
            <div class="col-md-12">
                <form id="adhocReportForm" class="form-horizontal" method="post" action="<?php $_PHP_SELF ?>">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Create Ad-hoc Report</strong></h3>
                            <span class="pull-right"><buton class="btn btn-default" type="button" id="generateReportBtn">Generate Report</buton></span>
                        </div>
                        <div class="panel-body">
                            <div class="row col-md-12 marginBotBox">
                                <div class="form-group">
                                    <label for="reportName">Report Name</label>
                                    <input type="text" class="form-control" id="reportName" name="reportName" />
                                </div>
                            </div> 
                            <div class="row">
                                <h4>Select Options</h4>
                                <div class="col-md-8">
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-12 marginBotBox" >
                                            <div class="col-xs-12 marginBotBox">
                                                <h4><strong>Passenger Information</strong></h4>
                                                <label for="selectAllPersonalInformation"><input type="checkbox" class="selectAllCheckboxes" id="selectAllPersonalInformationCheckbox">Select All</label>
                                                <ul class="list-group">
                                                    <li class="list-group-item">
                                                        <label for="title"><input type="checkbox" value="1" id="title" name="R.title_name::Title_Name"/> Title</label>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <label for="firstName"><input type="checkbox" value="1" id="firstName" name="R.first_name::First_Name"/> First Name</label>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <label for="lastName"><input type="checkbox" value="1" id="lastName" name="R.last_name::Last_Name"/>Last Name</label>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <label for="PNR"><input type="checkbox" value="1" id="PNR" name="R.pnr::PNR"/>Passenger Name Record (PNR)</label>
                                                    </li>
                                                </ul>
                                            </div>
                                             <div class="col-xs-12 marginBotBox">
                                                <h4><strong>Guests Information</strong></h4>
                                                <label for="selectAllActivities"><input type="checkbox" class="selectAllCheckboxes" id="selectAllActivities">Select All</label>
                                                <ul class="list-group">
                                                    <li class="list-group-item">
                                                        <input type="checkbox" value="1" name="R.G.title_name::Guest_Title_Name"/>
                                                        <strong>Title Name</strong>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <input type="checkbox" value="1" name="R.G.first_name::Guest_First_Name"/>
                                                        <strong>First Name</strong>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <input type="checkbox" value="1" name="R.G.last_name::Guest_Last_Name"/>
                                                        <strong>Last Name</strong>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <input type="checkbox" value="1" name="R.G.adult::Guest_Adult"/>
                                                        <strong>Adult</strong>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <input type="checkbox" value="1" name="R.G.child_age::Guest_Child_Age"/>
                                                        <strong>Child</strong>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <input type="checkbox" value="1" name="R.G.infant_age::Guest_Infant_Age"/>
                                                        <strong>Infant</strong>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <input type="checkbox" value="1" name="R.G.pnr::Guest_PNR"/>
                                                        <strong>PNR</strong>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-xs-12 marginBotBox" >
                                            <h4><strong>Arrivals Information</strong></h4>
                                            <label for="selectAllArrivalsInformation"><input type="checkbox" class="selectAllCheckboxes" id="selectAllArrivalsInformation">Select All</label>
                                            <ul class="list-group">
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.arr_date::Arr_Date"/>
                                                    <strong>Date</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.arr_time::Arr_Time"/>
                                                    <strong>Time</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.arr_flight_no::Arr_Flight"/>
                                                    <strong>Flight No</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.flight_class::Arr_Flight_Class"/>
                                                    <strong>Flight Class</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.arr_transport::Arr_Transport"/>
                                                    <strong>Transport</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.arr_driver::Arr_Driver"/>
                                                    <strong>Driver</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.arr_vehicle::Arr_Vehicle"/>
                                                    <strong>Vehicle</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.arr_pickup::Arr_Pickup"/>
                                                    <strong>Pickup</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.arr_dropoff::Arr_Dropoff"/>
                                                    <strong>Dropoff</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.room_type::Arr_Room_Type"/>
                                                    <strong>Room Type</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.rep_type::Arr_Rep_Type"/>
                                                    <strong>Rep Type</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.client_reqs::Arr_Client_Reqs"/>
                                                    <strong>Client Reqs</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.arr_transport_notes::Arr_Transport_Notes"/>
                                                    <strong>TransPort Notes</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.arr_hotel_notes::Arr_Hotel_Notes"/>
                                                    <strong>Hotel Notes</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.infant_seats::Arr_Infant_Seats"/>
                                                    <strong>Infant Seats</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.child_seats::Arr_Child_Seats"/>
                                                    <strong>Child Seats</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.booster_seats::Arr_Booster_Seats"/>
                                                    <strong>Booster Seats</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.vouchers::Arr_Vouchers"/>
                                                    <strong>Vouchers</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.cold_towel::Arr_Cold_Towel"/>
                                                    <strong>Cold Towel</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.bottled_water::Arr_Bottled_Water"/>
                                                    <strong>Water Bottles</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.rooms::Arr_Rooms"/>
                                                    <strong>Rooms</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.room_no::Arr_Room"/>
                                                    <strong>Room No</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.arr_main::Arr_Main"/>
                                                    <strong>Main</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.luggage_vehicle::Arr_Lagguage_Vehicle"/>
                                                    <strong>Luggage Vehicle</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.excursion_name::Arr_Excursion_Name"/>
                                                    <strong>Excursion Name</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.excursion_date::Arr_Excursion_Date"/>
                                                    <strong>Excursion Date</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.excursion_pickup::Arr_Excursion_Pickup"/>
                                                    <strong>Excursion Pickup</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.excursion_confirm_by::Arr_Excursion_Confirm_By"/>
                                                    <strong>Excursion Confirm By</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.excursion_confirm_date::Arr_Confirm_Date"/>
                                                    <strong>Excursion Confirm Date</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.excursion_guests::Arr_Excursion_Guests"/>
                                                    <strong>Excursion Guests</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.arr_rooms::Arr_Rooms"/>
                                                    <strong>Arr Rooms</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.A.room_last_name::Arr_Room_Last_Name"/>
                                                    <strong>Room Last Name</strong>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="row">
                                       
                                    </div>
                                </div>
                                <div class="col-md-4 marginBotBox">
                                    <div class="col-md-12 marginBotBox">
                                        <h4><strong>Departure Information</strong></h4>
                                        <label for="selectAllAdminAir"><input type="checkbox" class="selectAllCheckboxes" id="selectAllAdminAir">Select All</label>
                                         <ul class="list-group">
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.dpt_date::Dept_Date"/>
                                                    <strong>Date</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.dpt_time::Dept_Time"/>
                                                    <strong>Time</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.dpt_flight_no::Dept_Flight"/>
                                                    <strong>Flight No</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.flight_class::Dept_Flight_Class"/>
                                                    <strong>Flight Class</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.dpt_transport::Dept_Transport"/>
                                                    <strong>Transport</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.dpt_driver::Dept_Driver"/>
                                                    <strong>Driver</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.dpt_vehicle::Dept_Vehicle"/>
                                                    <strong>Vehicle</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.dpt_pickup::Dept_Pickup"/>
                                                    <strong>Pickup</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.dpt_dropoff::Dept_Dropoff"/>
                                                    <strong>Dropoff</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.dpt_pickup_time::Dept_Pickup_Time"/>
                                                    <strong>Pickup Time</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.dpt_notes::Dept_Notes"/>
                                                    <strong>Notes</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.dpt_transport_notes::Dept_Transport_Notes"/>
                                                    <strong>Transport Notes</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.dpt_main::Dept_Main"/>
                                                    <strong>Main</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="R.D.dpt_jet_center::Dept_Jet_Center"/>
                                                    <strong>Jet Center</strong>
                                                </li>
                                            </ul>
                                    </div>
                                </div>
                            </div>
                        </div><!--end of div panel panel-default-->
                </form><!--end of form-->
            </div><!--end of div col-md-12-->
        </div><!--end of div row-->
    </div> <!--end of div page-content-wrap-->
    <!-- END PAGE CONTENT WRAPPER -->
</div>
<!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->


<!-- START PRELOADS -->
<audio id="audio-alert" src="audio/alert.mp3" preload="auto"></audio>
<audio id="audio-fail" src="audio/fail.mp3" preload="auto"></audio>
<!-- END PRELOADS -->

<!-- START SCRIPTS -->
<!-- START PLUGINS -->
<script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="js/clone-form-td.js"></script>
<!-- END PLUGINS -->

<!-- THIS PAGE PLUGINS -->
<script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>
<script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>

<script type="text/javascript" src="js/plugins/bootstrap/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="js/plugins/bootstrap/bootstrap-timepicker.min.js"></script>
<script type="text/javascript" src="js/plugins/bootstrap/bootstrap-file-input.js"></script>
<script type="text/javascript" src="js/plugins/bootstrap/bootstrap-select.js"></script>
<script type="text/javascript" src="js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
<!--Select2-->
<script type="text/javascript" src="js/plugins/select2/dist/js/select2.full.min.js"></script>
<!-- END THIS PAGE PLUGINS -->

<!-- START TEMPLATE -->
<script type="text/javascript" src="js/relCopy.jquery.js"></script>
<script type="text/javascript" src="js/plugins.js"></script>
<script type="text/javascript" src="js/actions.js"></script>

<!--  Script for Inactivity-->
<script type="text/javascript" src="assets/store.js/store.min.js"></script>
<script type="text/javascript" src="assets/idleTimeout/jquery-idleTimeout.min.js"></script>
<script type="text/javascript" src="js/customScripting.js"></script>
<!--Select2-->
<script type="text/javascript" src="js/plugins/select2/dist/js/select2.full.min.js"></script>
<!-- END TEMPLATE -->
<script type="text/javascript" src="js/jquery.redirect.js"></script>

<script type="text/javascript">
    $(function(){
        $('.selectAllCheckboxes').on('change',function(){
            var MainBoxDiv = $(this).parent().parent();

            if($(this).is(':checked')){
                MainBoxDiv.find('ul.list-group').find('input[type="checkbox"]').prop('checked',true);

            }else{
                MainBoxDiv.find('ul.list-group').find('input[type="checkbox"]').prop('checked',false);
            }

        });

        $('#generateReportBtn').on('click',function(){
            //Getting All Inputs.
        var formData =   $('#adhocReportForm').serializeArray();
        var postURL = '<?=$url?>/adhoc_report.php';
        //Just Redirect it.
        $.redirect(postURL,formData,'POST','_blank');

        });
    });
</script>
</body>
</html>
