<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class FileModel extends CI_Model {
	// Fungsi untuk menampilkan semua data gambar
	public function view(){
		return $this->db->get('download')->result();
	}


//NambahFile
		public function upload(){
		$config['upload_path'] = './file/';
		$config['allowed_types'] = 'pdf|doc|docx|txt';
		$config['max_size']	= '10000';
		$config['remove_space'] = TRUE;
	
		$this->load->library('upload', $config); // Load konfigurasi uploadnya
		if($this->upload->do_upload('input_file')){ // Lakukan upload dan Cek jika proses upload berhasil
			// Jika berhasil :
			$return = array('result' => 'success', 'file' => $this->upload->data(), 'error' => '');
			return $return;
		}else{
			// Jika gagal :
			$return = array('result' => 'failed', 'file' => '', 'error' => $this->upload->display_errors());
			return $return;
		}
	}

		public function save($upload){
		$data = array(
			'nama_dokumen' => $upload['file']['file_name'],
			'versi'=>$this->input->post('versi'),
			'waktu_update'=>$this->input->post('waktu'),
			'keterangan'=>$this->input->post('input_deskripsi'),
			'id_sub_category' => $this->input->post('produk')
		);
		
		$this->db->insert('download', $data);
	}
}