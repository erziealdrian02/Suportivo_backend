<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
* 
*/
class Lunak extends CI_Controller
{
	
	public function __construct(){
		parent::__construct();
		
		$this->load->model('SoftwareModel');
	}

	public function index(){
		$data['software'] = $this->SoftwareModel->view();
		$this->load->view('software/view', $data);
	}
	
	public function tambah(){
		$data = array();
		
		if($this->input->post('submit')){ // Jika user menekan tombol Submit (Simpan) pada form
			// lakukan upload file dengan memanggil function upload yang ada di GambarModel.php
			$upload = $this->SoftwareModel->upload();
			
			if($upload['result'] == "success"){ // Jika proses upload sukses
				 // Panggil function save yang ada di GambarModel.php untuk menyimpan data ke database
				$this->SoftwareModel->save($upload);
				
				redirect('user/managesoftware'); // Redirect kembali ke halaman awal / halaman view data
			}else{ // Jika proses upload gagal
				$data['message'] = $upload['error']; // Ambil pesan error uploadnya untuk dikirim ke file form dan ditampilkan
			}
		}
		$this->load->library('form_validation');
		$this->load->view('software/form', $data);
	}

}
