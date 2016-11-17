<?php
  define("_VALID_PHP", true);
  require_once("../admin-panel-bgi/init.php");
  
  if (!$user->levelCheck("2,3,5,6,7,9"))
      redirect_to("index.php");
      
  $row = $user->getUserData();
?> 
<?php
/**
 * @author Alvin Herbert
 * @copyright 2015
 */

include('header.php');
site_header('Reservation Assignments');

//Grab all reservation info
$reservations = mysql_query("SELECT * FROM bgi_reservations WHERE status = 1 AND assigned = 1 AND yearweek(arr_date) = yearweek(curdate())");
?>
<script type="text/javascript" language="javascript" class="init">
    $(document).ready(function() {
	   $('#res-arrivals').DataTable( {
            "aLengthMenu": [[10, 15, 25, 35, 50, 100, -1], [10, 15, 25, 35, 50, 100, "All"]],
            fixedHeader: true,
            dom: 'T<"clear">lfrtip',
            tableTools: {
                "sSwfPath": "assets/swf/copy_csv_xls_pdf.swf",
                "aButtons": [
                    "copy",
                    {
                        "sExtends": "pdf",
                        "sButtonText": "Save to PDF",
                        "sPdfOrientation": "landscape",
                        "sPdfMessage": "Arrival Schedules"
                    },
                    //"print"
                ]            
            }
	       } );
           
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
                    <li><a href="#">Reservations</a></li>
                    <li><a href="#">Team Assignment</a></li>
                    <li class="active">Reservation Assignments</li>
                </ul>
                <!-- END BREADCRUMB -->

                <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-arrow-circle-o-left"></span> Reservations Assignments</h2>
                </div>
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                    <div class="row">
                        <div class="col-md-12">
                            
                            <!-- START DATATABLE EXPORT -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Arrival Schedules | <?php echo date("Y-m-d H:i"); ?></h3>
                                </div>
                                <div class="panel-body table-responsive">
                                    <table id="res-arrivals" class="table table-hover datatable">
                                    <?php if ($user->levelCheck("2,5,6,7,9")) : ?>
                                        <thead>
                                            <tr>
                                                <th>Rep</th>
                                                <th>Ref#</th>
                                                <th>Title</th>
                                                <th>Last Name</th>
                                                <th>First Name</th>
                                                <th>A</th>
                                                <th>C</th>
                                                <th>I</th>
                                                <th>Inf Seat</th>
                                                <th>Car Seat</th>
                                                <th>Boost Seat</th>
                                                <th>T/O</th>
                                                <th>Arrival Date</th>
                                                <th>Arr Flight#</th>
                                                <th>Hotel</th>
                                                <th>Dpt Date</th>
                                                <th>Dpt Flight#</th>
                                                <th>Pickup Time</th>
                                                <th>Arr & trans Notes</th>
                                                <th>Dpt & trans Notes</th>
                                                <th>Hotel Notes</th>
                                                <th>rep Notes</th>
                                                <th>Acc Notes</th>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                            while($row = mysql_fetch_array($reservations)) {
                                                $arr_flight_no = mysql_fetch_row(mysql_query("SELECT * FROM bgi_flights WHERE id_flight='" . $row[16] . "'"));
                                                $dpt_flight_no = mysql_fetch_row(mysql_query("SELECT * FROM bgi_flights WHERE id_flight='" . $row[28] . "'"));
                                                $arr_time = mysql_fetch_row(mysql_query("SELECT * FROM bgi_flighttime WHERE id_fltime='" . $row[15] . "'"));
                                                $tour_oper = mysql_fetch_row(mysql_query("SELECT * FROM bgi_touroperator WHERE id='" . $row[5] . "'"));
                                                $arr_dropoff = mysql_fetch_row(mysql_query("SELECT * FROM bgi_location WHERE id_location='" . $row[22] . "'"));
                                                $rep = mysql_fetch_row(mysql_query("SELECT * FROM bgi_reps WHERE id_rep='" . $row[42] . "'"));
                                                
                                                //assign names to results that are readable
                                                $id = $row[0];
                                                $title_name = $row[1];
                                                $first_name = $row[2];
                                                $last_name = $row[3];
                                                $ref_no = $row[7];
                                                $adult = $row[8];
                                                $child = $row[9];
                                                $infant = $row[10];
                                                $rep_notes = $row[11];
                                                $affiliate = $row[13];
                                                $arr_date = $row[14];
                                                $dpt_date = $row[26];
                                                $arr_notes = $row[44];
                                                $dpt_notes = $row[45];
                                                $acc_notes = $row[35];
                                                $infant_seat = $row[48];
                                                $car_seat = $row[49];
                                                $booster_seat = $row[50];
                                                
                                                if ($row[12]>0){
                                                    $displayft='*';
                                                    } else {
                                                        $displayft='';
                                                    }                                              
                                                
                                                echo '<tr>
                                                        <td>' . $rep[1] . '</td>
                                                        <td>' . $ref_no . '</td>
                                                        <td>' . $title_name . '</td>                                                        
                                                        <td>' . $first_name . '</td>
                                                        <td>' . $last_name . '</td>
                                                        <td>' . $adult . '</td>
                                                        <td>' . $child . '</td>
                                                        <td>' . $infant . '</td>
                                                        <td>' . $infant_seat . '</td>
                                                        <td>' . $car_seat . '</td>
                                                        <td>' . $booster_seat . '</td>
                                                        <td>' . $tour_oper[1] . '</td>
                                                        <td>' . $arr_date . '</td>
                                                        <td>' . $arr_flight_no[1] . '</td>
                                                        <td>' . $arr_dropoff[1] . '</td>
                                                        <td>' . $dpt_date . '</td>
                                                        <td>' . $dpt_flight_no[1] . '</td>
                                                        <td>' . $arr_time[2] . '</td>
                                                        <td>' . $dpt_date . '</td>
                                                        <td>' . $arr_notes . '</td>
                                                        <td>' . $dpt_notes . '</td>
                                                        <td>' . $rep_notes . '</td>
                                                        <td>' . $acc_notes . '</td>                                                       
                                                        <td><a href="reservation-details-rep.php?id=' . $id . '"><i class="fa fa-search" data-toggle="tooltip" data-placement="top" title="Click to change rep: ' . $rep[1] . '"></i></a>' . $displayft . '</div></td>
                                                </tr>';
                                            }
                                        ?>
                                        </tbody>
                                        <?php else: ?>
                                        <thead>
                                            <tr>
                                                <th>Rep</th>
                                                <th>Ref#</th>
                                                <th>Title</th>
                                                <th>Last Name</th>
                                                <th>First Name</th>
                                                <th>A</th>
                                                <th>C</th>
                                                <th>I</th>
                                                <th>Inf Seat</th>
                                                <th>Car Seat</th>
                                                <th>Boost Seat</th>
                                                <th>T/O</th>
                                                <th>Arrival Date</th>
                                                <th>Arr Flight#</th>
                                                <th>Hotel</th>
                                                <th>Dpt Date</th>
                                                <th>Dpt Flight#</th>
                                                <th>Pickup Time</th>
                                                <th>Arr & trans Notes</th>
                                                <th>Dpt & trans Notes</th>
                                                <th>Hotel Notes</th>
                                                <th>rep Notes</th>
                                                <th>Acc Notes</th>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                         <?php
                                            while($row = mysql_fetch_array($reservations)) {
                                                $arr_flight_no = mysql_fetch_row(mysql_query("SELECT * FROM bgi_flights WHERE id_flight='" . $row[16] . "'"));
                                                $dpt_flight_no = mysql_fetch_row(mysql_query("SELECT * FROM bgi_flights WHERE id_flight='" . $row[28] . "'"));
                                                $arr_time = mysql_fetch_row(mysql_query("SELECT * FROM bgi_flighttime WHERE id_fltime='" . $row[15] . "'"));
                                                $tour_oper = mysql_fetch_row(mysql_query("SELECT * FROM bgi_touroperator WHERE id='" . $row[5] . "'"));
                                                $arr_dropoff = mysql_fetch_row(mysql_query("SELECT * FROM bgi_location WHERE id_location='" . $row[22] . "'"));
                                                $rep = mysql_fetch_row(mysql_query("SELECT * FROM bgi_reps WHERE id_rep='" . $row[42] . "'"));
                                                
                                                //assign names to results that are readable
                                                $id = $row[0];
                                                $title_name = $row[1];
                                                $first_name = $row[2];
                                                $last_name = $row[3];
                                                $ref_no = $row[7];
                                                $adult = $row[8];
                                                $child = $row[9];
                                                $infant = $row[10];
                                                $rep_notes = $row[11];
                                                $affiliate = $row[13];
                                                $arr_date = $row[14];
                                                $dpt_date = $row[26];
                                                $arr_notes = $row[44];
                                                $dpt_notes = $row[45];
                                                $acc_notes = $row[35];
                                                $infant_seat = $row[48];
                                                $car_seat = $row[49];
                                                $booster_seat = $row[50];
                                                
                                                if ($row[12]>0){
                                                    $displayft='*';
                                                    } else {
                                                        $displayft='';
                                                    }                                              
                                                
                                                echo '<tr>
                                                        <td>' . $rep[1] . '</td>
                                                        <td>' . $ref_no . '</td>
                                                        <td>' . $title_name . '</td>                                                        
                                                        <td>' . $first_name . '</td>
                                                        <td>' . $last_name . '</td>
                                                        <td>' . $adult . '</td>
                                                        <td>' . $child . '</td>
                                                        <td>' . $infant . '</td>
                                                        <td>' . $infant_seat . '</td>
                                                        <td>' . $car_seat . '</td>
                                                        <td>' . $booster_seat . '</td>
                                                        <td>' . $tour_oper[1] . '</td>
                                                        <td>' . $arr_date . '</td>
                                                        <td>' . $arr_flight_no[1] . '</td>
                                                        <td>' . $arr_dropoff[1] . '</td>
                                                        <td>' . $dpt_date . '</td>
                                                        <td>' . $dpt_flight_no[1] . '</td>
                                                        <td>' . $arr_time[2] . '</td>
                                                        <td>' . $dpt_date . '</td>
                                                        <td>' . $arr_notes . '</td>
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
        <script type="text/javascript" src="js/plugins/datatables/dataTables.tableTools.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/tableExport.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/jquery.base64.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/html2canvas.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/jspdf/libs/sprintf.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/jspdf/jspdf.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/jspdf/libs/base64.js"></script>        
        <!-- END THIS PAGE PLUGINS-->  
        
        <!-- START TEMPLATE -->      
        <script type="text/javascript" src="js/plugins.js"></script>        
        <script type="text/javascript" src="js/actions.js"></script>        
        <!-- END TEMPLATE -->
    <!-- END SCRIPTS -->                 
    </body>
</html>