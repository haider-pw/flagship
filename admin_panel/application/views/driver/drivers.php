 <style>
   .total-vehicle{font-size: 16px;padding: 0 0 12px 0;}
   .flr100{float:left;width:100%;}
 </style>
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Drivers List
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?=base_url('home')?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active">Drivers</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          
          <!-- /.box -->

          <div class="box">
            <div class="box-header">
              <a class="btn btn-sm btn-success add" data-toggle="modal" data-target="#edit-driver">Add New Driver</a>
              <h3 class="box-title pull-right">Total Drivers: <span class="dr-count"><?=count($drivers)?></span></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             <?php 
                $data['vehicles']=$drivers;
                $this->load->view('driver/drivers_list', $data); 
                ?>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>


<!-- Vehicle Modal -->
<div class="modal fade" id="edit-driver" role="dialog" aria-labelledby="tour_op_lbl">
  <div class="modal-dialog" role="document">
    <div class="modal-content col-md-12">
      <div class="modal-header col-md-12">
        <h5 class="modal-title font22 bold fl" id="tour_op_lbl">Add New Driver</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body col-md-12">
          <div class="col-md-12">
            <label>Driver Name:</label>
            <input type="text" class="form-control driver_name" value="" />
            <input type="hidden" value="" class="driver_id">
          </div>
          <div class="col-md-12">
            
          </div>
      </div>
      <div class="modal-footer col-md-12">
        <button type="button" class="btn btn-primary save-driver">Save</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>


<!-- Vehicles modal -->
<div class="modal fade" id="vehicle_md" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content flr100">
      <div class="modal-header">
        <strong class="modal-title pull-left col-xs-11 pad0" id="exampleModalLabel" style="font-size: 18px;">Vehicles List</strong>
        <button type="button" class="close col-xs-1 pad0" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body flr100">
         <div class="flr100 total-vehicle">
            <div class="col-md-9 col-sm-9 col-xs-8"><strong>Driver: <span class="dr-name"></span></strong></div>
            <div class="col-md-3 col-sm-3 col-xs-4 pull-right"><strong>Vehicles: <span style="background-color:#0b8cba" class="badge badge-pill"></span></strong></div>
         </div>
         <div class="flr100 vehicle-list col-md-12"></div>
      </div>
    </div>
  </div>
</div>