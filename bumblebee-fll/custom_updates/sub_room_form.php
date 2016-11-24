<?php
//Lets Check the Room Type.
if($_POST){
    $request = $_POST['req'];
    $roomCount = $_POST['dataID'];
    $arrID = $_POST['arrID'];
}
?>
<div class="clearfix"></div>
<div class="roomDiv">
<div class="form-group col-lg-3 col-sm-7 col-xs-12" style="margin-right: 10px !important;"><!-- room type selection -->
    <label for="arr_room_type<?=isset($roomCount)?$roomCount:''?>">Room type</label>
    <select class="form-control right20" id="arr_room_type<?=isset($roomCount)?$roomCount:''?>" name="arr_room_type<?=isset($roomCount)?$roomCount:''?>">
        <option>Room Type</option>
    </select>
</div>
<div class="form-group col-lg-2 col-sm-7 col-xs-12" style="margin-right: 10px !important;"><!-- room number -->
    <label class="right20">Room number</label>
    <input class="form-control right20" id="arr_room-no<?=isset($roomCount)?$roomCount:''?>" name="arr_room_no<?=isset($roomCount)?$roomCount:''?>" placeholder="Room number">
</div>
<div class="form-group col-lg-2 col-sm-7 col-xs-12" style="margin-right: 10px !important;">
    <label>Last Name</label>
    <input type="text" class="form-control right20" id="arr_room_last_name<?=isset($roomCount)?$roomCount:''?>" name="arr_room_last_name<?=isset($roomCount)?$roomCount:''?>" placeholder="Guest last name">
</div>
<div class="form-group col-lg-3 actionButtons" style="margin-top: 21px;">
    <a class="btn btn-default removeBtn" data-id="<?=$arrID?>"><i class="fa fa-minus"></i> Remove Room</a>
    <a class="btn btn-default addRoomBtn" data-id="<?=$arrID?>"><i class="fa fa-plus"></i> Add Room</a>
</div>
</div>