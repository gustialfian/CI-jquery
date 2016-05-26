<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
    function __construct(){
        parent::__construct();
        $this->load->model('Model_people');
    }
	public function index()
	{
		$this->load->view('view_dashboard');
	}
	public function limit($limit, $start)
	{
		$peoples = $this->Model_people->get_Limit($limit, $start);
        echo "<pre>";
        print_r($peoples);
        echo "</pre>";        
        
        $jsonPeople = json_encode($peoples);
        
        // echo "<pre>{$jsonPeople}</pre>";
        
        return json_encode($peoples);
	}
}
