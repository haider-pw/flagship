<style>
  .disable{border: none;background-color: transparent!important;}
</style>
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Locations List
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?=base_url('home')?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active">Locations</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <!-- /.box -->
           <div class="box  box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Filter By</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                </div>
            </div>
            <div class="box-body">
              <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Name:</label>
                               <input type="text" id="search_by_name" class="form-control " placeholder="Search By Name">
                            </div><!-- /.form-group -->
                        </div><!-- /.col -->
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Zone:</label>
                                <input type="text" id="Search_by_zone" class="form-control " placeholder="Search By Zone">
                            </div><!-- /.form-group -->
                        </div><!-- /.col -->
                    </div>
            </div>
        </div>

          <div class="box">
            <div class="box-header">
              <a class="btn btn-sm btn-success add" data-toggle="modal" data-target="#edit-loc">Add New Location</a>
              <!-- <h3 class="box-title pull-right">Total Locations: <span class="flight-count"></span></h3> -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             <table id="data_list" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>ID</th>
                  <th>Location</th>
                  <th>Zone</th>
                  <th class="text-center">Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
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
<div class="modal" id="edit-loc" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content col-md-12">
      <div class="modal-header col-md-12">
        <h5 class="modal-title font22 bold fl" id="tour_op_lbl">Add New Location</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body col-md-12">
          <div class="col-md-12">
            <label>Location:</label>
            <input type="text" class="form-control loc_name" value="" />
            <label>Zone :</label>
            <!-- <input type="text" class="form-control loc_zone" value="" /> -->
            <select class="from-control loc_zone select2" style="width:100%" >
              <option value="1">East Coast</option>
              <option value="2">West Coast</option>
              <option value="3">North Coast</option>
              <option value="4">South Coast</option>
            </select>
            <input type="hidden" value="" class="loc_id">
            <input type="hidden" value="" class="zone_id">
          </div>
      </div>
      <div class="modal-footer col-md-12">
        <button type="button" class="btn btn-primary save-loc">Save</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
