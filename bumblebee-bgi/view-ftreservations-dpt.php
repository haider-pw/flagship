<?php
  error_reporting(0);
  define("_VALID_PHP", true);
  require_once("../admin-panel-bgi/init.php");
  
  if (!$user->levelCheck("2,3,5,6,7,9,1"))
      redirect_to("index.php");
  
  if ($row->userlevel == 2){
        $group = '2';
    } elseif ($row->userlevel == 3){
        $group = '3';
    }
      
  $row = $user->getUserData();
?> 
<?php
/**
 * @author Alvin Herbert
 * @copyright 2015
 */

include('header.php');
site_header('Reservation List - Arrivals');

//Grab all reservation info
$reservations = mysql_query("SELECT * FROM bgi_reservations WHERE fast_track = 1 AND status = 1"); 
?>
<script type="text/javascript" language="javascript" class="init">
    $(document).ready(function() {
        $.datepicker.regional[""].dateFormat = 'yyyy-mm-dd';
        $.datepicker.setDefaults($.datepicker.regional['']);
	   $('#res-arrivals').DataTable( {
            "aLengthMenu": [[10, 15, 25, 35, 50, 100, -1], [10, 15, 25, 35, 50, 100, "All"]],
            dom: 'T<"clear">lfrtip',
            "order": [[ 2, "asc" ]],
            scrollY:        200,
            deferRender:    true,
            scroller:       true,
            tableTools: {
                "sSwfPath": "assets/swf/copy_csv_xls_pdf.swf",
                "aButtons": [
                    "copy",
                    {
                        "sExtends": "pdf",
                        "sButtonText": "Save to PDF",
                        "sPdfOrientation": "landscape",
                        "sPdfMessage": "Departure Schedules"
                    },
                    //"print"
                ]
                }            
            });
            
	       } );
        new FixedHeader( document.getElementById('res-arrivals') );
           
/* Add a click handler to the rows */
	$("#res-arrivals tbody tr").on('click',function(event) {
		$("#res-arrivals tbody tr").removeClass('row_selected');		
		$(this).addClass('row_selected');
	});

    } );
</script>

                    <?php include ('profile.php'); ?>
                   <?php include ('navigation.php'); ?>
                <!-- END X-NAVIGATION -->
            </div>
            <!-- END PAGE SIDEBAR -->
            
            <!-- PAGE CONTENT -->
            <div class="page-content">
                <?php include ('vert-navigation.php'); ?>
                <!-- START BREADCRUMB -->
                <ul class="breadcrumb">
                    <li><a href="dashboard.php">Home</a></li>
                    <li>Reservations</li>
                    <li class="active"><a href="view-reservations-dpt.php">View Reservations - Departures</a></li>
                </ul>
                <!-- END BREADCRUMB -->
                
                <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-arrow-circle-o-left"></span> Reservations - Departures</h2>
                </div>
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                    <div class="row">
                        <div class="col-md-12">
                            
                            <!-- START DATATABLE EXPORT -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-title">
                                        <h3>Departure Schedules | <?php echo date("Y-m-d H:i"); ?></h3>
                            <form name="reportselect">
                            <select name="menu" onChange="window.document.location.href=this.options[this.selectedIndex].value;" value="GO" class="form-control">
                                <option selected="selected">Departures</option>
                                <option value="view-ftreservations-arr.php">Arrivals &amp; Departures</option>
                                <option value="view-ftreservations.php">Arrivals</option>-reservations-dpt.php">Departures</option>
                                <option value="view-ftflight-arr.php">Arrival Flight</option>
                            </select>
                            </form>
                                    </div>                                     
                                    <!-- Date picker -->
                                    <ul class="panel-controls panel-controls-title">                                        
                                        <li>
                                            <div id="reportrange" class="dtrange">                                            
                                                <span></span><b class="caret"></b>
                                            </div>                                     
                                        </li>                                
                                    </ul>                                    
                                    
                                </div>
                               
                                <div class="panel-body table-responsive">
                                    <table id="res-arrivals" class="table table-hover datatable display">
                                        <?php if ($user->levelCheck("2,5,6,7,9")) : ?>
                                        <thead>
                                            <tr>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                <th>Title</th>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>T/O</th>
                                                <th>Ref #</th>
                                                <th>Rep</th>
                                                <th>Rep Service</th>
                                                <th>Hotel</th>
                                                <th>Trans Type</th>
                                                <th>Inf Seat</th>
                                                <th>Car Seat</th>
                                                <th>Boost Seat</th>
                                                <th>Arr Reqs</th>
                                                <th>Additional Reqs</th>
                                                <th>A</th>
                                                <th>C</th>
                                                <th>I</th>
                                                <th>Arr Date</th>
                                                <th>Class</th>
                                                <th>PU Time</th>
                                                <th>Dropoff</th>
                                                <th>Dpt Date</th>
                                                <th>Dpt Flight#</th>
                                                <th>Dpt Time</th>
                                                <th>Dpt &amp; Trans Notes</th>
                                                <th>Rep Notes</th>
                                                <th>Acct Notes</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                            while($row = mysql_fetch_array($reservations)) {
                                                
                                                $dpt_flight_no = mysql_fetch_row(mysql_query("SELECT * FROM bgi_flights WHERE id_flight='" . $row[28] . "'"));
                                                $dpt_time = mysql_fetch_row(mysql_query("SELECT * FROM bgi_flighttime WHERE id_fltime='" . $row[27] . "'"));                                                   
                                                $tour_oper = mysql_fetch_row(mysql_query("SELECT * FROM bgi_touroperator WHERE id='" . $row[5] . "'"));
                                                $rep_type = mysql_fetch_row(mysql_query("SELECT * FROM bgi_reptype WHERE id='" . $row[24] . "'"));
                                                $flight_class = mysql_fetch_row(mysql_query("SELECT * FROM bgi_flightclass WHERE id='" . $row[55] . "'"));
                                                $rep_name = mysql_fetch_row(mysql_query("SELECT * FROM bgi_reps WHERE id_rep='" . $row[42] . "'"));
                                                $hotel = mysql_fetch_row(mysql_query("SELECT * FROM bgi_location WHERE id_location='" . $row[22] . "'"));
                                                $dpt_dropoff = mysql_fetch_row(mysql_query("SELECT * FROM bgi_location WHERE id_location='" . $row[33] . "'"));
                                                
                                                //assign names to results that are readable
                                                $id = $row[0];
                                                $title_name = $row[1];
                                                $first_name = $row[2];
                                                $last_name = $row[3];
                                                $ref_no = $row[7];
                                                $arr_date = $row[14];
                                                $transport_type = $row[18];
                                                $infant_seat = $row[48];
                                                $car_seat = $row[49];
                                                $booster_seat = $row[50];
                                                $cold_towel = $row[53];
                                                $bottled_water = $row[54];
                                                $client_reqs = $row[25];
                                                $adult = $row[8];
                                                $child = $row[9];
                                                $infant = $row[10];
                                                $dpt_date = $row[26];
                                                $dpt_notes = $row[45];
                                                $rep_notes = $row[11];
                                                $acc_notes = $row[35];
                                                $putime = $row[34];
                                                
                                                
                                                if ($row[53]>0){
                                                        $ct= ''. $cold_towel . 'CT(s)';
                                                    } else {
                                                        $ct='No CT';
                                                    
                                                    }
                                                    
                                                if ($row[54]>0){
                                                        $bw= ''. $bottled_water . 'BW';
                                                    } else {
                                                        $bw='No BW';
                                                    
                                                    }
                                                
                                                
                                                if ($row[42]>0){
                                                        $rep = $rep_name[1];
                                                    } else {
                                                        $rep='Not Assigned';
                                                    
                                                    }
                                                
                                                echo '<tr>
                                                        <td><a href="reservation-details.php?id=' . $id . '"><i class="fa fa-search" data-toggle="tooltip" data-placement="top" title="View / Edit reservation"></i></a></td>
                                                        <td>' . $title_name . '</td>
                                                        <td>' . $first_name . '</td>
                                                        <td>' . $last_name . '</td>
                                                        <td>' . $tour_oper[1] . '</td>
                                                        <td>' . $ref_no . '</td>
                                                        <td>' . $rep . '</td>
                                                        <td>' . $rep_type[1] . '</td>
                                                        <td>' . $hotel[1] . '</td>
                                                        <td>' . $transport_type . '</td>
                                                        <td>' . $infant_seat . '</td>
                                                        <td>' . $car_seat . '</td>
                                                        <td>' . $booster_seat . '</td>
                                                        <td>' . $bw . '/' . $ct . '</td>
                                                        <td>' . $client_reqs . '</td>
                                                        <td>' . $adult . '</td>
                                                        <td>' . $child . '</td>
                                                        <td>' . $infant . '</td>
                                                        <td>' . $arr_date . '</td>
                                                        <td>' . $flight_class[1] . '</td>
                                                        <td>' . $putime . '</td>
                                                        <td>' . $dpt_dropoff[1] . '</td>
                                                        <td>' . $dpt_date . '</td>
                                                        <td>' . $dpt_flight_no[1] . '</td>
                                                        <td>' . $dpt_time[2] . '</td>
                                                        <td>' . $dpt_notes . '</td>
                                                        <td>' . $rep_notes . '</td>
                                                        <td>' . $acc_notes . '</td>
                                                </tr>';
                                            }
                                        ?>
                                        </tbody>
                                        <?php else: ?>
                                        <thead>
                                            <tr>
                                               <th>Title</th>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                               <th>T/O</th>
                                                <th>Ref #</th>
                                                <th>Rep</th>
                                                <th>Rep Service</th>
                                                <th>Hotel</th>
                                                <th>Trans Type</th>
                                                <th>Inf Seat</th>
                                                <th>Car Seat</th>
                                                <th>Boost Seat</th>
                                                <th>Arr Reqs</th>
                                                <th>Additional Reqs</th>
                                                <th>A</th>
                                                <th>C</th>
                                                <th>I</th>
                                                <th>Arr Date</th>
                                                <th>Class</th>
                                                <th>Dpt Date</th>
                                                <th>Dpt Flight#</th>
                                                <th>Dpt Time</th>
                                                <th>Dpt &amp; Trans Notes</th>
                                                <th>Rep Notes</th>
                                                <th>Acct Notes</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                            while($row = mysql_fetch_array($reservations)) {
                                                
                                                $dpt_flight_no = mysql_fetch_row(mysql_query("SELECT * FROM bgi_flights WHERE id_flight='" . $row[28] . "'"));
                                                $dpt_time = mysql_fetch_row(mysql_query("SELECT * FROM bgi_flighttime WHERE id_fltime='" . $row[27] . "'"));                                                 
                                                $tour_oper = mysql_fetch_row(mysql_query("SELECT * FROM bgi_touroperator WHERE id='" . $row[5] . "'"));
                                                $rep_type = mysql_fetch_row(mysql_query("SELECT * FROM bgi_reptype WHERE id='" . $row[24] . "'"));
                                                $flight_class = mysql_fetch_row(mysql_query("SELECT * FROM bgi_flightclass WHERE id='" . $row[17] . "'"));
                                                $rep_name = mysql_fetch_row(mysql_query("SELECT * FROM bgi_reps WHERE id_rep='" . $row[42] . "'"));
                                                $hotel = mysql_fetch_row(mysql_query("SELECT * FROM bgi_location WHERE id_location='" . $row[22] . "'"));
                                                
                                                //assign names to results that are readable
                                                $id = $row[0];
                                                $title_name = $row[1];
                                                $first_name = $row[2];
                                                $last_name = $row[3];
                                                $ref_no = $row[7];
                                                $arr_date = $row[14];
                                                $transport_type = $row[18];
                                                $infant_seat = $row[48];
                                                $car_seat = $row[49];
                                                $booster_seat = $row[50];
                                                $cold_towel = $row[53];
                                                $bottled_water = $row[54];
                                                $client_reqs = $row[25];
                                                $adult = $row[8];
                                                $child = $row[9];
                                                $infant = $row[10];
                                                $dpt_date = $row[26];
                                                $dpt_notes = $row[45];
                                                $rep_notes = $row[11];
                                                $acc_notes = $row[35];
                                                
                                                if ($row[53]>0){
                                                        $ct= ''. $cold_towel . 'CT(s)';
                                                    } else {
                                                        $ct='No CT';
                                                    
                                                    }
                                                    
                                                if ($row[54]>0){
                                                        $bw= ''. $bottled_water . 'BW';
                                                    } else {
                                                        $bw='N0 BW';
                                                    
                                                    }
                                                
                                                if ($row[12]>0){
                                                        $fsft='Y';
                                                    } else {
                                                        $fsft='N';
                                                    
                                                    }
                                                
                                                if ($row[42]>0){
                                                        $rep = $rep_name[1];
                                                    } else {
                                                        $rep='Not Assigned';
                                                    
                                                    }
                                                
                                                echo '<tr>
                                                        <td>' . $title_name . '</td>
                                                        <td>' . $first_name . '</td>
                                                        <td>' . $last_name . '</td>
                                                        <td>' . $tour_oper[1] . '</td>
                                                        <td>' . $ref_no . '</td>
                                                        <td>' . $rep . '</td>
                                                        <td>' . $rep_type[1] . '</td>
                                                        <td>' . $hotel[1] . '</td>
                                                        <td>' . $transport_type . '</td>
                                                        <td>' . $infant_seat . '</td>
                                                        <td>' . $car_seat . '</td>
                                                        <td>' . $booster_seat . '</td>
                                                        <td>' . $bw . '/' . $ct . '</td>
                                                        <td>' . $client_reqs . '</td>
                                                        <td>' . $adult . '</td>
                                                        <td>' . $child . '</td>
                                                        <td>' . $infant . '</td>
                                                        <td>' . $arr_date . '</td>
                                                        <td>' . $flight_class[1] . '</td>
                                                        <td>' . $dpt_date . '</td>
                                                        <td>' . $dpt_flight_no[1] . '</td>
                                                        <td>' . $dpt_time[2] . '</td>
                                                        <td>' . $dpt_notes . '</td>
                                                        <td>' . $rep_notes . '</td>
                                                        <td>' . $acc_notes . '</td>
                                                </tr>';
                                            }
                                        ?>
                                        </tbody>
                                        <?php endif; ?>
                                    </table>                                    
                                    
                                </div>
                            </div>
                            <!-- END DATATABLE EXPORT -->
                        </div>
                    </div>

                </div>         
                <!-- END PAGE CONTENT WRAPPER -->
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->    

        <!-- MESSAGE BOX-->
        <div class="message-box animated fadeIn" data-sound="alert" id="mb-remove-row">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-times"></span> Remove <strong>Data</strong> ?</div>
                    <div class="mb-content">
                        <p>Are you sure you want to remove this row?</p>                    
                        <p>Press Yes if you sure.</p>
                    </div>
                    <div class="mb-footer">
                        <div class="pull-right">
                            <button class="btn btn-success btn-lg mb-control-yes">Yes</button>
                            <button class="btn btn-default btn-lg mb-control-close">No</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END MESSAGE BOX-->        
        
        <!-- MESSAGE BOX-->
        <div class="message-box animated fadeIn" data-sound="alert" id="mb-signout">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-sign-out"></span> Log <strong>Out</strong> ?</div>
                    <div class="mb-content">
                        <p>Are you sure you want to log out?</p>                    
                        <p>Press Yes to logout current user. Press No if you want to continue working. </p>
                    </div>
                    <div class="mb-footer">
                        <div class="pull-right">
                            <a href="logout.php" class="btn btn-success btn-lg">Yes</a>
                            <button class="btn btn-default btn-lg mb-control-close">No</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END MESSAGE BOX-->

        <!-- START PRELOADS -->
        <audio id="audio-alert" src="audio/alert.mp3" preload="auto"></audio>
        <audio id="audio-fail" src="audio/fail.mp3" preload="auto"></audio>
        <!-- END PRELOADS -->                      

    <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>        
        <!-- END PLUGINS -->
        
        <!-- START THIS PAGE PLUGINS-->        
        <script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>
        <script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
        
        <script type="text/javascript" src="js/plugins/datatables/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="js/plugins/datatables/dataTables.fixedHeader.min.js"></script>
        <script type="text/javascript" src="js/plugins/datatables/dataTables.tableTools.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/tableExport.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/jquery.base64.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/html2canvas.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/jspdf/libs/sprintf.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/jspdf/jspdf.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/jspdf/libs/base64.js"></script>
        <script type="text/javascript" src="js/plugins/moment.min.js"></script>
        <script type="text/javascript" src="js/plugins/daterangepicker/daterangepicker.js"></script>        
        <!-- END THIS PAGE PLUGINS-->  
        
        <!-- START TEMPLATE -->
        <script type="text/javascript" src="js/jquery.dataTables.columnFilter.js"></script>      
        <script type="text/javascript" src="js/plugins.js"></script>        
        <script type="text/javascript" src="js/actions.js"></script> 
        <script type="text/javascript" src="js/demo_dashboard.js"></script>       
        <!-- END TEMPLATE -->
    <!-- END SCRIPTS -->                 
    </body>
</html>