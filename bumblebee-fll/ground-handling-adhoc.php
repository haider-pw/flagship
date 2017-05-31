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
                                            <h4><strong>Passenger Information</strong></h4>
                                            <label for="selectAllPersonalInformation"><input type="checkbox" class="selectAllCheckboxes" id="selectAllPersonalInformationCheckbox">Select All</label>
                                            <ul class="list-group">
                                                <li class="list-group-item">
                                                    <label for="title"><input type="checkbox" value="1" id="title" name="R.title_name"/> Title</label>
                                                </li>
                                                <li class="list-group-item">
                                                    <label for="firstName"><input type="checkbox" value="1" id="firstName" name="R.first_name"/> First Name</label>
                                                </li>
                                                <li class="list-group-item">
                                                    <label for="lastName"><input type="checkbox" value="1" id="lastName" name="R.last_name"/>Last Name</label>
                                                </li>
                                                <li class="list-group-item">
                                                    <label for="PNR"><input type="checkbox" value="1" id="PNR" name="R.pnr"/>Passenger Name Record (PNR)</label>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 col-xs-12 marginBotBox" >
                                            <h4><strong>Arrivals Information</strong></h4>
                                            <label for="selectAllArrivalsInformation"><input type="checkbox" class="selectAllCheckboxes" id="selectAllArrivalsInformation">Select All</label>
                                            <ul class="list-group">
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="emer_cont_name"/>
                                                    <strong>Date</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="emery_home_tel"/>
                                                    <strong>Time</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="emerg_work_tel"/>
                                                    <strong>Flight No</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="emerg_cell"/>
                                                    <strong>Flight Class</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="dr_name"/>
                                                    <strong>Transport</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="dr_tel"/>
                                                    <strong>Driver</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="medical"/>
                                                    <strong>Vehicle</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="rx_medication"/>
                                                    <strong>Pickup</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="food_not_allow"/>
                                                    <strong>Dropoff</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="food_not_prefer"/>
                                                    <strong>Room Type</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="diabetic"/>
                                                    <strong>Rep Type</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="hypertension"/>
                                                    <strong>Client Reqs</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="vegetarian"/>
                                                    <strong>TransPort Notes</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="veg_and_fish"/>
                                                    <strong>Hotel Notes</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="lactose_intollerant"/>
                                                    <strong>Infant Seats</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="glueten_intollerant"/>
                                                    <strong>Child Seats</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="special_occasion"/>
                                                    <strong>Booster Seats</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="special_occasion"/>
                                                    <strong>Vouchers</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="special_occasion"/>
                                                    <strong>Cold Towel</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="special_occasion"/>
                                                    <strong>Water Bottles</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="special_occasion"/>
                                                    <strong>Rooms</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="special_occasion"/>
                                                    <strong>Room No</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="special_occasion"/>
                                                    <strong>Main</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="special_occasion"/>
                                                    <strong>Luggage Vehicle</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="special_occasion"/>
                                                    <strong>Excursion Name</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="special_occasion"/>
                                                    <strong>Excursion Date</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="special_occasion"/>
                                                    <strong>Excursion Confirm By</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="special_occasion"/>
                                                    <strong>Excursion Confirm Date</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="special_occasion"/>
                                                    <strong>Room Last Name</strong>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-12 marginBotBox">
                                            <h4><strong>Arrivals Information</strong></h4>
                                            <label for="selectAllFlightAccomodation"><input type="checkbox" class="selectAllCheckboxes" id="selectAllFlightAccomodation">Select All</label>
                                            <ul class="list-group">
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="ff_num_1"/>
                                                    <strong>FF Number 1</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="ff_airline_1"/>
                                                    <strong>FF Airline 1</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="ff_num_2"/>
                                                    <strong>FF Number 2</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="ff_airline_2"/>
                                                    <strong>FF Airline 2</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="seart_pref"/>
                                                    <strong>Seat Preference</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="bags_num"/>
                                                    <strong>Number of Bags</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="bed_cong"/>
                                                    <strong>Bed Cong</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="home_airport"/>
                                                    <strong>Home Airport</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="dept_date"/>
                                                    <strong>Departure Date</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="ret_date"/>
                                                    <strong>Return Date</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="air_travel_notes"/>
                                                    <strong>Air Travel Notes</strong>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 col-xs-12 marginBotBox">
                                            <h4><strong>Reservation Information</strong></h4>
                                            <label for="selectAllPassportInformation"><input type="checkbox" class="selectAllCheckboxes" id="selectAllPassportInformation">Select All</label>
                                            <ul class="list-group">
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="passport"/>
                                                    <strong>Passport #</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="pass_city"/>
                                                    <strong>Pass Citizenship</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="pass_issue_date"/>
                                                    <strong>Pass Issue Date</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="pass_exp_date"/>
                                                    <strong>Pass Exp Date</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="valid_us_visa"/>
                                                    <strong>Valid US Visa</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="able_to_us_visa"/>
                                                    <strong>Able to Obtain US Visa</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="schengen"/>
                                                    <strong>Schengen Visa #</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="schengen_visa_exp"/>
                                                    <strong>Schengen Visa Exp Date</strong>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 col-xs-12 marginBotBox">
                                            <h4><strong>Guests Information</strong></h4>
                                            <label for="selectAllActivities"><input type="checkbox" class="selectAllCheckboxes" id="selectAllActivities">Select All</label>
                                            <ul class="list-group">
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="first_choice"/>
                                                    <strong>1st Choice</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="second_choice"/>
                                                    <strong>2nd Choice</strong>
                                                </li>
                                                <li class="list-group-item">
                                                    <input type="checkbox" value="1" name="third_choice"/>
                                                    <strong>3rd Choice</strong>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 marginBotBox">
                                    <div class="col-md-12 marginBotBox">
                                        <h4><strong>Admin Air</strong></h4>
                                        <label for="selectAllAdminAir"><input type="checkbox" class="selectAllCheckboxes" id="selectAllAdminAir">Select All</label>
                                        <ul class="list-group">
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="arr_date"/>
                                                <strong>Arr Date</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="arr_flight"/>
                                                <strong>Arr Flight</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="arr_time"/>
                                                <strong>Arr Time</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="pnr"/>
                                                <strong>PNR</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tt_to"/>
                                                <strong>Seg 1 TT To</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tt_from"/>
                                                <strong>Seg 1 TT From</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tt_date"/>
                                                <strong>Seg 1 TT Date</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tt_flight"/>
                                                <strong>Seg 1 TT Flight</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tt_class"/>
                                                <strong>Seg 1 TT Class</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tt_seat_num"/>
                                                <strong>Seg 1 TT Seat Number</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tt_dep_time"/>
                                                <strong>Seg 1 TT Departure Time</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tt_arr_time"/>
                                                <strong>Seg 1 TT Arrival Time</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tt_to"/>
                                                <strong>Seg 2 TT To</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tt_from"/>
                                                <strong>Seg 2 TT From</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tt_date"/>
                                                <strong>Seg 2 TT Date</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tt_flight"/>
                                                <strong>Seg 2 TT Flight</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tt_class"/>
                                                <strong>Seg 2 TT Class</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tt_seat_num"/>
                                                <strong>Seg 2 TT Seat Number</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tt_dept_time"/>
                                                <strong>Seg 2 TT Departure Time</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tt_arr_time"/>
                                                <strong>Seg 2 TT Arrival Time</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tt_to"/>
                                                <strong>Seg 3 TT To</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tt_from"/>
                                                <strong>Seg 3 TT From</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tt_date"/>
                                                <strong>Seg 3 TT Date</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tt_flight"/>
                                                <strong>Seg 3 TT Flight</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tt_class"/>
                                                <strong>Seg 3 TT Class</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tt_seat_num"/>
                                                <strong>Seg 3 TT Seat Number</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tt_dep_time"/>
                                                <strong>Seg 3 TT Departure Time</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tt_arr_time"/>
                                                <strong>Seg 3 TT Arrival Time</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tf_from"/>
                                                <strong>Seg 1 TF From</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tf_to"/>
                                                <strong>Seg 1 TF To</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tf_date"/>
                                                <strong>Seg 1 TF Date</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tf_flight"/>
                                                <strong>Seg 1 TF Flight</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tf_class"/>
                                                <strong>Seg 1 TF Class</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tf_seat_num"/>
                                                <strong>Seg 1 TF Seat Number</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tf_dept_time"/>
                                                <strong>Seg 1 TF Departure Time</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_1_tf_arr_time"/>
                                                <strong>Seg 1 TF Arrival Time</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tf_from"/>
                                                <strong>Seg 2 TF From</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tf_to"/>
                                                <strong>Seg 2 TF To</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tf_date"/>
                                                <strong>Seg 2 TF Date</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tf_flight"/>
                                                <strong>Seg 2 TF Flight</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tf_class"/>
                                                <strong>Seg 2 TF Class</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tf_seat_num"/>
                                                <strong>Seg 2 TF Seat Number</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tf_dep_time"/>
                                                <strong>Seg 2 TF Departure Time</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_2_tf_arr_time"/>
                                                <strong>Seg 2 TF Arrival Time</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tf_from"/>
                                                <strong>Seg 3 TF From</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tf_to"/>
                                                <strong>Seg 3 TF To</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tf_date"/>
                                                <strong>Seg 3 TF Date</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tf_flight"/>
                                                <strong>Seg 3 TF Flight</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tf_class"/>
                                                <strong>Seg 3 TF Class</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tf_seat_num"/>
                                                <strong>Seg 3 TF Seat Number</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tf_dept_time"/>
                                                <strong>Seg 3 TF Departure Time</strong>
                                            </li>
                                            <li class="list-group-item">
                                                <input type="checkbox" value="1" name="seg_3_tf_arr_time"/>
                                                <strong>Seg 3 TF Arrival Time</strong>
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
        var postURL = '<?=$url?>/reports/adhoc-generate.php';
        //Just Redirect it.
        $.redirect(postURL,formData,'POST','_blank');

        });
    });
</script>
</body>
</html>
