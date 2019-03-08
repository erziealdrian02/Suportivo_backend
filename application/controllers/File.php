<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class File extends CI_Controller{

	public function __construct(){
		parent::__construct();

		$this->load->model('FileModel');
	}

	public function index(){
		$data['file'] = $this->FileModel->view();
		$this->load->view('file/view', $data);
	}

	public function tambah(){
		$data = array();

		if($this->input->post('submit')){ // Jika user menekan tombol Submit (Simpan) pada form
			// lakukan upload file dengan memanggil function upload yang ada di FileModel.php
			$upload = $this->FileModel->upload();

			if($upload['result'] == "success"){ // Jika proses upload sukses
				 // Panggil function save yang ada di FileModel.php untuk menyimpan data ke database
				$this->FileModel->save($upload);

				redirect('user/managefile'); // Redirect kembali ke halaman awal / halaman view data
			}else{ // Jika proses upload gagal
				$data['message'] = $upload['error']; // Ambil pesan error uploadnya untuk dikirim ke file form dan ditampilkan
			}
		}
		$this->load->library('form_validation');
		$this->load->view('file/form', $data);
	}



}
