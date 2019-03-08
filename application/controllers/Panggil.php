<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
* 
*/
class panggil extends CI_Controller
{
	
	public function __construct(){
		parent::__construct();

		$this->load->model('GambarModel');
		
	}

	public function index()
	{
		$this->load->view('input');
	}

	public function duaan()
	{
		$this->load->view('coba');
	}
}