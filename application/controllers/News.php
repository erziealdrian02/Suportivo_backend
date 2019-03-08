<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
*
*/
class News extends CI_Controller
{

	public function __construct(){
		parent::__construct();

		$this->load->model('NewsModel');
	}

	public function index(){
		$data['news'] = $this->NewsModel->view();
		$this->load->view('news/view', $data);
	}

	public function tambah(){

		$data = array();

		if($this->input->post('submit')){ // Jika user menekan tombol Submit (Simpan) pada form
				 // Panggil function save yang ada di GambarModel.php untuk menyimpan data ke database
				$this->NewsModel->save();

				redirect('user/managenews'); // Redirect kembali ke halaman awal / halaman view data
		}
		$this->load->library('form_validation');
		$this->load->view('news/form', $data);
	}

}
