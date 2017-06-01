<?php
  define("_VALID_PHP", true);
  require_once("../admin-panel-fll/init.php");
  
  if (!$user->levelCheck("2,3,5,6,7,9"))
      redirect_to("index.php");
      
?> 
<?php
/**
 * @author Alvin Herbert
 * @copyright 2015
 */

include('header.php');
site_header('Ad Hoc Report');

require('reports/adhoc-generate.php');
/*echo '<pre>';
var_dump($resultData);
var_dump($columns);
echo '</pre>'; exit;*/

  $row = $user->getUserData();



?>
<style>
    .buttons-pdf{background-color:#95b75d!important;background-image: none!important;color:white!important;}
</style>
<link rel="stylesheet" href="css/buttons.dataTables.min.css" type="text/css">
<link rel="stylesheet" href="css/simplePagination.css" type="text/css">
<!-- 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.0.8/pagination.css" /> -->

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
                    <li>Reports</li>
                    <li class="active"><a href="view-cancellations.php">AdHoc Report</a></li>
                </ul>
                <!-- END BREADCRUMB -->
                
                <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-arrow-circle-o-left"></span>AdHoc Report</h2>
                </div>
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                    <div class="row">
                        <div class="col-md-12">
                            
                            <!-- START DATATABLE EXPORT -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Arrival & Departure Schedules</h3>
                                    <a href="reports/adhoc_pdf.php?excel" class="pull-right btn btn-success export_pdf">Export Excel</a>
                                    <a href="reports/adhoc_pdf.php?pdf" style="margin-right: 5px;" class="pull-right btn btn-success export_pdf">Export Pdf</a>

                                </div>
                                <div class="panel-body table-responsive">
                                    <table id="res-arrivals" class="table table-hover">
                                        <?php if ($user->levelCheck("5,6,7,9")) { ?>
                                        <thead>
                                            <tr>
                                            <?php if(isset($columns) && !empty($columns)){ 
                                                foreach($columns as $column){
                                                echo '<td>'.$column.'</td>';
                                                }
                                             } ?>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                            if(isset($resultData) && (!empty($resultData))){
                                                foreach($resultData as $row){
                                                    echo '<tr>';
                                                    foreach($row as $column){
                                                        echo '<td>'.$column.'</td>';
                                                    }  
                                                    echo '</tr>';                                                  
                                                }
                                            }
                                        ?>
                                        </tbody>
                                        <?php } 



                $total=ceil($sqlrows/$limit);

                /*if($id>1)
                {
                echo "<a href='?id=".($id-1)."' class='button'>PREVIOUS</a>";
                }

                echo "<ul class='page'>";
                for($i=1;$i<=$total;$i++)
                {
                if($i==$id) { echo "<li class='current'>".$i."</li>"; }

                else { echo "<li><a href='?id=".$i."'>".$i."</a></li>"; }
                }

                if($id!=$total)
                {
                echo "<a href='?id=".($id+1)."' class='button'>NEXT</a>";
                }
                echo "</ul>";*/
                                        ?>
                                    </table>                                    
                                    <div id="data-container" style="display:none"></div>
                                    <div id="pagination-container"></div>
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

<div class="modal fade" id="repNotes" tabindex="-1" role="dialog" aria-labelledby="repNotesLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <!--                <button type="button" class="btn btn-primary">Save changes</button>-->
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="arrNotes" tabindex="-1" role="dialog" aria-labelledby="repNotesLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <!--                <button type="button" class="btn btn-primary">Save changes</button>-->
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="dptNotes" tabindex="-1" role="dialog" aria-labelledby="repNotesLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <!--                <button type="button" class="btn btn-primary">Save changes</button>-->
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="acctNotes" tabindex="-1" role="dialog" aria-labelledby="repNotesLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <!--                <button type="button" class="btn btn-primary">Save changes</button>-->
            </div>
        </div>
    </div>
</div>


        <!-- START PRELOADS -->
        <audio id="audio-alert" src="audio/alert.mp3" preload="auto"></audio>
        <audio id="audio-fail" src="audio/fail.mp3" preload="auto"></audio>
        <!-- END PRELOADS -->                      

    <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="js/plugins/jquery-ui/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>        
        <!-- END PLUGINS -->
        
        <!-- START THIS PAGE PLUGINS-->        
        <script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>
        <script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
        
        <script type="text/javascript" src="js/plugins/datatables/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="js/plugins/datatables/dataTables.buttons.min.js"></script>
        <script type="text/javascript" src="js/plugins/datatables/buttons.flash.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
        <script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
        <script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
        <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.0.8/pagination.js"></script> -->

<!--        <script type="text/javascript" src="js/plugins/datatables/dataTables.tableTools.js"></script>-->
        <script type="text/javascript" src="js/plugins/tableexport/tableExport.js"></script>
    <script type="text/javascript" src="js/plugins/tableexport/jquery.base64.js"></script>
    <script type="text/javascript" src="js/plugins/tableexport/html2canvas.js"></script>
    <script type="text/javascript" src="js/plugins/tableexport/jspdf/libs/sprintf.js"></script>
    <script type="text/javascript" src="js/plugins/tableexport/jspdf/jspdf.js"></script>
    <script type="text/javascript" src="js/plugins/tableexport/jspdf/libs/base64.js"></script>   


    <script type="text/javascript" src="js/jquery.simplePagination.js"></script>              
        <!-- END THIS PAGE PLUGINS-->  
        
        <!-- START TEMPLATE -->      
        <script type="text/javascript" src="js/plugins.js"></script>        
        <script type="text/javascript" src="js/actions.js"></script>

<!--  Script for Inactivity-->
<script type="text/javascript" src="assets/store.js/store.min.js"></script>
<script type="text/javascript" src="assets/idleTimeout/jquery-idleTimeout.min.js"></script>
<script type="text/javascript" src="js/customScripting.js"></script>
        <!-- END TEMPLATE -->
    <!-- END SCRIPTS -->

<script type="text/javascript">
    $(document).ready(function() {
        $('#res-arrivals').dataTable( {
            "iDisplayLength": 25, 
            "aLengthMenu": [[10, 15, 25, 35, 50, 100, -1], [10, 15, 25, 35, 50, 100, "All"]],
            "dom": 'T<"clear">lBfrtip',
            "order": [[ 1, "asc" ]],
            "bPaginate": false,
            "buttons": [
                {
                    extend: 'excel',
                    text: 'Export current page',
                    exportOptions: {
                        modifier: {
                            page: 'current'
                        }
                    }
                }/*,
                {
                    extend: 'excel',
                    text: 'Export all pages',
                    exportOptions: {
                        modifier: {
                            page: 'all'
                        }
                    }
                }*/

            ]
        } );

        /* Add a click handler to the rows */
        $("#res-arrivals tbody tr").on('click',function(event) {
            $("#res-arrivals tbody tr").removeClass('row_selected');
            $(this).addClass('row_selected');
        });



        //Custom Code Syed Haider Hassan
        $(".repNotes").on("click",function(){
            var m = $("#repNotes");
            var modalLabel = m.find("#myModalLabel");
            var modalBody = m.find(".modal-body");

            modalLabel.text("Rep Notes");
            modalBody.html($(this).html());

            m.modal('show');
        });
        $(".arrNotes").on("click",function(){
            var m = $("#repNotes");
            var modalLabel = m.find("#myModalLabel");
            var modalBody = m.find(".modal-body");

            modalLabel.text("Arr & Trans Notes");
            modalBody.html($(this).html());

            m.modal('show');
        });
        $(".dptNotes").on("click",function(){
            var m = $("#repNotes");
            var modalLabel = m.find("#myModalLabel");
            var modalBody = m.find(".modal-body");

            modalLabel.text("Dpt & Trans Notes");
            modalBody.html($(this).html());

            m.modal('show');
        });
        $(".acctNotes").on("click",function(){
            var m = $("#repNotes");
            var modalLabel = m.find("#myModalLabel");
            var modalBody = m.find(".modal-body");

            modalLabel.text("Acct Notes");
            modalBody.html($(this).html());

            m.modal('show');
        });
        //End of Custom Code Syed Haider Hassan
        
        /*function simpleTemplating(data) {
            var html = '<ul>';
            $.each(data, function(index, item){
                html += '<li class="pagelist">'+ item +'</li>';
            });
            html += '</ul>';
            return html;
        }

        var total = <?=$total?>;
        console.log(total);
        var data = [];
        for(var i=1; i<=total; i++){
            data.push(i);
        }
        console.log(data);
        $('#pagination-container').pagination({
            dataSource: data,
            callback: function(data, pagination) {
                var html = simpleTemplating(data);
                $('#data-container').html(html);
            }
        })

        // send ajax req to get record against pagination
        $(document).on('click', '.pagelist', function(e){
            var page = $(this).attr('data-num');
            console.log(page);
            $.ajax({
                data:{page:page},
                type:"GET",
                success:function(data){

                }
            })
        })*/

        $(function() {
            $('#pagination-container').pagination({
                items: <?=$sqlrows?>,
                itemsOnPage: 25,
                cssStyle: 'light-theme',
                currentPage: <?=$id?>,
                onPageClick:function(pageNumber, event){
                    /*$.ajax({
                        url:"reports/pagination_result.php"
                        data:{page:pageNumber},
                        type:"GET",
                        success:function(data){

                        }
                    })*/
                    window.location.assign("http://<?=$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF']?>?id="+pageNumber);
                }
            });
        });
    });
</script>
</body>
</html>