<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Location extends MY_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct()
    {
        parent::__construct();
    }
    
	public function index()
	{
		$data['coasts']=array();
		$tbl=$this->session->userdata('prefix').'loc_coast';
			// get the db tables list
		$tableList=getTables(); // define in custom helper
		// check if the tbl exist in db 
		if(in_array($tbl, $tableList)){
			$data['coasts']=$this->Common_model->select($tbl);
		}
		$this->show_front('location/locations', $data);
	}
	//
	public function listing(){
		$tbl=$this->session->userdata('prefix').'location';

		$tblzone=$this->session->userdata('prefix').'loc_coast';
		$selectData = array($tbl.'.id_location AS ID, '.$tbl.'.name AS Location, '.$tblzone.'.coast As Zone',false);
		 $join=array(
				array(
				'table'=>$tblzone,
				'condition'=>$tbl.'.zone='.$tblzone.'.id',
				'type'=>'inner'
				)
			);

		// get the db tables list
		$tableList=getTables(); // define in custom helper
		// check if the tbl exist in db 
		if(in_array($tbl, $tableList)){

            $addColumns = array(
                'ActionButtons' => array('<div class="col-md-12 text-center"><a class="btn btn-sm btn-primary edit" data-toggle="modal" data-target="#edit-loc"><i data-toggle="tooltip" title="Edit" class=" ml-fa fa fa-pencil fa-6 "></i> Edit</a>&nbsp; &nbsp;<a data-id="del-loc" class="btn btn-sm btn-danger del-loc" data-toggle="modal" data-target="#confirm_modal"><i data-toggle="tooltip" title="Delete" data-placement="right"  class="fa fa-trash-o ml-fa"></i> Delete</a></div>','ID')
            );

            $returnedData = $this->Common_model->select_fields_joined_DT($selectData, $tbl,$join,'','','','',$addColumns);
             print_r($returnedData);
            //echo json_encode($returnedData);
		} 
	} // end of function

	// get location by id 
	public function getLocationById(){
		if($this->input->post('locId')){
			$tbl=$this->session->userdata('prefix').'location';
			$tblzone=$this->session->userdata('prefix').'loc_coast';
			// get tables list
			$tableList=getTables(); // define in custom helper
			// check if the tbl exist in db 
			 $join=array(
				array(
				'table'=>$tblzone,
				'condition'=>$tbl.'.zone='.$tblzone.'.id',
				'type'=>'inner'
				)
			);
			 $where = array('id_location'=> $this->input->post('locId'));
			if(in_array($tbl, $tableList)){
				$result=$this->Common_model->select_fields_where_like_join($tbl, '*', $join, $where, true);

				if($result){ // in case when record successfully update
					echo 'OK::Data fetched successfully::success::'.json_encode($result);
				} else {
					echo 'OK::Data not found.::error';
				}
			}
		} // end of if
	}// end of function

	// save location (edit or new)
	public function saveLocation(){
		if($this->input->post('loc_name') and $this->input->post('loc_zone')){
			if(!empty($this->input->post('loc_name')) and !empty($this->input->post('loc_zone'))){
			$data=array(
					'name'=>$this->input->post('loc_name'),
					'zone'=>$this->input->post('loc_zone')
				);
			$tbl=$this->session->userdata('prefix').'location';
			// update row if loc id exist
			if($this->input->post('loc_id') and !empty($this->input->post('loc_id'))){
				$result=$this->Common_model->update($tbl, array('id_location'=> $this->input->post('loc_id')), $data);

				if($result){ // in case when record successfully update
					$tblzone=$this->session->userdata('prefix').'loc_coast';
					 $join=array(
						array(
						'table'=>$tblzone,
						'condition'=>$tbl.'.zone='.$tblzone.'.id',
						'type'=>'inner'
						)
					);
					 $where = array('id_location'=> $this->input->post('loc_id'));

					$data=$this->Common_model->select_fields_where_like_join($tbl, '*', $join, $where, true);
					echo 'OK::Location has been updated Successfully::success::update::'.json_encode($data);
				} else {
					echo 'OK::Location Not Updated. Try again::error';
				}
			} 
			// if loc id not exist, means user want to add new record
			else {
				$result=$this->Common_model->insert_record($tbl, $data);

				if($result){ // in case when record successfully added
					//get record corresponding to that id
					$tblzone=$this->session->userdata('prefix').'loc_coast';
					 $join=array(
						array(
						'table'=>$tblzone,
						'condition'=>$tbl.'.zone='.$tblzone.'.id',
						'type'=>'inner'
						)
					);
					 $where = array('id_location'=> $result);
					
					$data=$this->Common_model->select_fields_where_like_join($tbl, '*', $join, $where, true);
					if($data){ // in case if row successfully fetch
						echo 'OK::New Location has been added Successfully::success::add::'.json_encode($data);
					}
					else { // in case when row added, but not fetch due to some error
						//echo 'OK::New Tour Operator has been added Successfully::success::add::'.json_encode($data);
					}
				} else {
					echo 'OK::Location Not Added. Try again::error';
				} // end of else
			} // end of outer else
		}// end of outer most if
	}// end of outer most if
	}// end of function

	// delete location 
	public function delLocation(){
		if($this->input->post('locId') and !empty($this->input->post('locId'))){
			// delete row where opId match
			$tbl=$this->session->userdata('prefix').'location';
			$result=$this->Common_model->delete($tbl, array('id_location'=> $this->input->post('locId')));
			if($result>0){ // in case when record successfully deleted
				echo 'OK::Location has been deleted Successfully::success';
			} else {
				echo 'OK::Location Not Deleted. Try again::error';
			}
		} // end of if
	}
}
