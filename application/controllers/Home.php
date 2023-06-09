<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller
{
    public function __construct() 
    {
        parent::__construct();
        $this->middleware();
        $this->load->model('MUser');
    }
        
    public function index()
    {
        $data['title'] = 'Home - ManyMinds';
        $data['my_user'] = $this->MUser->getUser($this->session->userdata('user_id'));
        $data['content'] = $this->load->view('system/home', $data, true);
        $this->load->view('template', $data);
	}
}
