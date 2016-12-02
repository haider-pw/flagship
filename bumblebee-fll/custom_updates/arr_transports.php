<?php
/**
 * Created by PhpStorm.
 * User: Syed Haider Hassan
 * Date: 12/2/2016
 * Time: 11:06 AM
 */
include ('..\select.class.php');
error_reporting(E_ALL ^ E_DEPRECATED);
?>
<hr style="border: 1px solid #cccccc;">
<div class="arr_transport_div">
<div class="form-group col-xs-7"> <!-- transport mode field -->
    <label>Transport mode</label>
    <?php include ('..\transport_mode_arr.php'); ?>
</div>
<div class="clearfix"></div>
<!-- initiate chained selection drivers -->
<div class="form-group col-xs-4"><!-- available driver selection -->
    <label for="arr-driver">Driver</label>
    <select class="form-control" id="arr-driver" name="arr_driver" required="required">
        <?php echo $opt->ShowTransport(); ?>
    </select>
</div>
<div class="form-group col-xs-3"><!-- vehicle # selection -->
    <label for="arr-vehicle-no" class="left20">Vehicle</label>
    <select class="form-control left20" id="arr-vehicle-no" name="arr_vehicle_no">
        <option value="0">Select vehicle</option>
    </select>
</div>
    <div class="left20" id="addArrTransportDiv col-lg-1">
        <div class="form-group left20" style="margin-top: 20px; display:inline-block; margin-left: 15px;">
            <a class="btn btn-default addArrTransportBtn left20" data-id="0"><i class="fa fa-plus"></i> Add Transport</a>
        </div>
    </div>
</div>
<div class="clearfix"></div>
