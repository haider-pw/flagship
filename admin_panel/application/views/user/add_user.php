
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Add New User
            <small></small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?=base_url('/')?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?=base_url('/user')?>">Users</a></li>
            <li class="active">New User</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title"></h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                        <i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                        <i class="fa fa-times"></i></button>
                </div>
                <div class="col-md-12 errors">

                <button type="button" class="close close-error" style="margin-top: 12px;margin-right:12px;color:white;opacity:1;">
                  <span aria-hidden="true">&times;</span>
                </button>
                    <?php
                        if($this->session->flashdata('form_error')){
                            echo '<div class="alert" style="background-color:#868080;color:white">'.$this->session->flashdata('form_error').'</div>';
                        }
                    ?>

                </div>
            </div>
            <div class="box-body">
                <div class="row col-md-12">
                    <div class="box box-danger">
                        <div class="box-header">
                        </div>
                        <div class="box-body">
                            <form name="add_user_form" action="<?=base_url('user/addNewUser')?>" method="post" enctype="multipart/form-data">

                                <div class="col-md-3 col-sm-3 col-xs-12 col-md-push-9 col-sm-push-9">
                                    <div class="col-md-12 text-center">
                                        <img style="width:150px;max-height:150px" class="responsive prof_img" src="<?=$this->frontEndPath.'/admin-panel-fll/uploads/blank.png'?>" />
                                        <hr>
                                        <input type="file" name="avatar" class="avatar hidden" accept="image/*" />
                                        <a class="btn btn-primary choose-avatar">Choose Avatar</a>
                                    </div>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12 col-md-pull-3 col-sm-pull-3">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <!-- Date dd/mm/yyyy -->
                                        <div class="form-group">
                                            <label>First Name:</label>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-user"></i>
                                                </div>
                                                <input type="text" name="fname" value="FirstName" class="form-control" required value="">
                                            </div>
                                            <!-- /.input group -->
                                        </div>
                                        <!-- /.form group -->
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <!-- Date dd/mm/yyyy -->
                                        <div class="form-group">
                                            <label>Last Name:</label>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-user"></i>
                                                </div>
                                                <input type="text" name="lname" value="Lastname" class="form-control" required value="">
                                            </div>
                                            <!-- /.input group -->
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <!-- Date dd/mm/yyyy -->
                                        <div class="form-group">
                                            <label>Username:</label>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-user"></i>
                                                </div>
                                                <input type="text" name="username" value="username" class="form-control" required value="">
                                            </div>
                                            <!-- /.input group -->
                                        </div>
                                        <!-- /.form group -->
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <!-- Date dd/mm/yyyy -->
                                        <div class="form-group">
                                            <label>Password:</label>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-key" aria-hidden="true"></i>
                                                </div>
                                                <input type="text" name="password" value="password" class="form-control" required value="">
                                            </div>
                                            <!-- /.input group -->
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <!-- Date dd/mm/yyyy -->
                                        <div class="form-group">
                                            <label>Email:</label>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-user"></i>
                                                </div>
                                                <input type="text" name="email" value="email" class="form-control" required value="">
                                            </div>
                                            <!-- /.input group -->
                                        </div>
                                        <!-- /.form group -->
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <!-- Date dd/mm/yyyy -->
                                        <div class="form-group">
                                            <label>Country:</label>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-user"></i>
                                                </div>
                                                <input type="text" name="country" value="country" class="form-control" required value="">
                                            </div>
                                            <!-- /.input group -->
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <!-- Date dd/mm/yyyy -->
                                        <div class="form-group">
                                            <label>User Status:</label>&nbsp;&nbsp;&nbsp;&nbsp; <br>
                                            <label><input type="radio" name="status" required value="y" class="flat-red" checked> Active</label>&nbsp;&nbsp;
                                            <label><input type="radio" name="status" required value="n" class="flat-red"> Inactive</label>&nbsp;&nbsp;
                                            <label><input type="radio" name="status" required value="b" class="flat-red"> Banned</label>&nbsp;&nbsp;
                                            <label><input type="radio" name="status" required value="t" class="flat-red"> Pending</label>
                                            <!-- /.input group -->
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <!-- Date dd/mm/yyyy -->
                                        <div class="form-group">
                                            <label>Newsletter Subscribe:</label>&nbsp;&nbsp;&nbsp;&nbsp;<br>
                                            <label><input type="radio" name="newsletter" required value="1" class="flat-red" checked> Yes</label>&nbsp;&nbsp;
                                            <label><input type="radio" name="newsletter" required value="0" class="flat-red"> No</label>
                                            <!-- /.input group -->
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <!-- Date dd/mm/yyyy -->
                                        <div class="form-group">
                                            <label>User Level:</label>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-user"></i>
                                                </div>
                                                <select name="level" class="form-control select2" required style="width: 100%;">
                                                    <?php
                                                    if(isset($roles) and is_array($roles) and !empty($roles)){
                                                        foreach($roles as $role){?>
                                                            <option value="<?=$role->level_id?>"><?=$role->role_name?></option>
                                                        <?php }
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                            <!-- /.input group -->
                                        </div>
                                        <!-- /.form group -->
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="col-md-9">
                                        <textarea name="notes" class="form-control" rows="4" placeholder="User Notes">This is notes</textarea>
                                        <hr>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-12" style="position: absolute;bottom: 0;right: 0;">
                                        <input type="submit" class="btn btn-success pull-right" value="Save Changes" />
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->

                </div>
                <!-- /.row -->
            </div>

        </div>
        <!-- /.box -->

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
