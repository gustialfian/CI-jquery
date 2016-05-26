<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api_people extends CI_Controller {
    function __construct(){
        parent::__construct();
        $this->load->model('Model_people');
    }
	public function index()
	{
		echo "this is Api_People Controller";
	}
	public function limit($limit, $start)
	{
		$peoples = $this->Model_people->get_Limit($limit, $start);
        echo json_encode($peoples);
	}
	public function count()
	{
		echo json_encode($this->Model_people->count());
	}
	public function peoples()
	{
		echo json_encode($this->Model_people->get_all());
	}
}
