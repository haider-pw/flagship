<script>
    $(function () {
        oTable = "";
        var regTableSelector = $("#data_list");
        var url_DT = "<?=base_url('location/listing')?>";
        var aoColumns_DT = [
            /* ID */ {
                "mData": "ID",
                "bVisible": true,
                "bSortable": true,
                "bSearchable": true
            },
            /* Status */ {
                "mData": "Location"
            },
            /* Status */ {
                "mData": "Zone"
            },
            {
                "mData": "ActionButtons"
            }
        ];
        var HiddenColumnID_DT = "ID";
        var sDom_DT = '<"H"r>t<"F"<"row"<"col-lg-6 col-xs-12" i> <"col-lg-6 col-xs-12" p>>>';
        commonDataTables(regTableSelector, url_DT, aoColumns_DT, sDom_DT, HiddenColumnID_DT);


        new $.fn.dataTable.Responsive(oTable, {
            details: true
        });
        removeWidth(oTable);

        //Code for search box
      
        $("#search_by_name").on("keyup", function (e) {
            oTable.fnFilter($(this).val());
        });
        /*$('#Search_by_zone').change(function(){
            //oTable.fnFilter($(this).val()); 
             oTable.fnFilter("^" + $(this).val() + "$", true, false, true);
        })*/
        $("#Search_by_zone").on("change", function (e) {
          if($(this).val()==0){
             oTable.fnFilter('coast');
          } else {
            oTable.fnFilter($(this).select2('data')[0]['text']);
          }
        });

       
    // on show bs modal edit location
     $('#edit-loc').on('show.bs.modal', function (e) {
      <?php //check the modal invoker element, as same modal will be use for different functionalities(add, edit) ?>
        var invoker = $(e.relatedTarget);
        var ref=$(this);
        if((invoker.attr('class')).indexOf(' edit') > -1) {
          var locId=invoker.parents('tr').attr('data-id');
          if(locId!=""){
              $.ajax({
                url:"<?=base_url('location/getLocationById')?>",
                type:"POST",
                data:{locId:locId},
                beforeSend:function(){},
                success:function(data){
                    var data=data.split('::');
                    if(data[2]=='success'){
                        var location=JSON.parse(data[3]);
                        ref.find('.loc_name').val(location.name);
                      //  ref.find('.loc_zone').val(location.coast); 
                        ref.find('.loc_id').val(location.id_location); 
                        //ref.find('.zone_id').val(location.zone); 

                        // select zone 
                        $('#edit-loc').find('.loc_zone').find('option[value="'+location.zone+'"]').prop('selected', true);
                    } else if(data[2]=='error'){
                        notify(data[1], data[2]);
                    }
                },
                error:function(){

                }
              })
          }

        $(this).find('#tour_op_lbl').html('Update Location'); 
        }
    })

     <?php // on modal close , delete all values  ?>
     $('#edit-loc').on('hidden.bs.modal', function () {
        $(this).find('input').val("");
        $(this).find('#tour_op_lbl').html('Add New Location'); // default title
    })

     // save location
     $(document).on('click','.save-loc', function(){
        var parentMdl=$(this).parents('#edit-loc');
        var loc_name = parentMdl.find('.loc_name').val();
        var loc_zone = parentMdl.find('.loc_zone').val();
        var loc_id = parentMdl.find('.loc_id').val();
        // console.log(op_name+' dd'+opId);
        if(loc_name==''){
          notify('Location Name is Required','error');
        } else if(loc_zone==''){
          notify('Zone is Required','error');
        }
        else {
          $.ajax({
            url:"<?=base_url('location/saveLocation')?>",
            type:"POST",
            data:{loc_name:loc_name,loc_zone:loc_zone,loc_id:loc_id},
            beforeSend:function(){},
            success:function(data){
              parentMdl.modal('toggle');
              var data=data.split('::');
              if(data[2]=='success'){
                var record= JSON.parse(data[4]);
                // if record updated
                console.log(record['zone']);
                if(data[3]=='update'){
                  $('#data_list').find('tr[data-id="'+record['id_location']+'"]').children('td').eq(1).html(record['name']);
                   $('#data_list').find('tr[data-id="'+record['id_location']+'"]').children('td').eq(2).html(record['coast']);
                  

                }
                // if new record added
                else if(data[3]=='add'){
                  
                  // data table add new row 
                  /*var rowNode = oTable.row.add( [record['id_location'], record['name'] ,record['zone'],'<a class="btn btn-sm btn-primary edit" data-toggle="modal" data-target="#edit-tour"><i class="fa fa-pencil"></i> Edit</a>' '<a class="btn btn-sm btn-danger del-tourop"><i class="fa fa-trash"></i> Delete</a>' ] ).draw(false).node();
                    $(rowNode).attr( {'data-id':record['id_location'] } );*/
                    
                }
                notify(data[1], data[2]);
              }
              // if operation fail
              else {
                notify('Location not updated. Try again','error');
              }
            },
            error:function(){
              notify('Location not updated. Try again','error');
            }
          }); // end of ajax
        } // end of outer if
     }) // end of save tour click function

    function delLocation(locId){
      var row=$('#data_list').find('tr[data-id="'+locId+'"]');
      $.ajax({
        url:"<?=base_url('location/delLocation')?>",
        type:"POST",
        data:{locId:locId},
        beforeSend:function(){},
        success:function(data){
          var data=data.split('::');
          if(data[2]=='success'){
            //oTable.row(row).remove().draw();
            row.remove();
            notify(data[1], data[2]);
          }
          else {
            notify('Location not deleted. Try again','error');
          }
        },
        error:function(){
          notify('Location not deleted. Try again','error');
        }
      });// end of ajax
    } // end of del loc  function

    // on confirm del click button
    $('.conf_del').on('click', function(e){
        var delMdl=$(this).parents('#confirm_modal');
        var id=delMdl.find('.id_one').val();
        var action=delMdl.find('.action_val').val();
        // check action value to perform action accordingly
        if(action=='del-loc'){
            delLocation(id);
            // close modal
            $(this).parents('.modal').modal('toggle');
        }
    })
    });

</script>