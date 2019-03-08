<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class FileModel extends CI_Model {
	// Fungsi untuk menampilkan semua data gambar
	public function view(){
		$this->db->Order_by('id', 'desc');
		return $this->db->get('download')->result();

	}

		//NambahFile
		public function upload(){
			$config['upload_path'] = './file/';
			$config['allowed_types'] = 'pdf|doc|docx|txt|rar|zip';
			$config['max_size']	= '900000000';
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

		// Fungsi untuk menyimpan data ke database
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

		public function hapus_databarang($where,$table){
	 		$this->db->where($where);
	 		$this->db->delete($table);
	}
	 	public function edit_databarang	($where,$table){
	 		return $this->db->get_where($table,$where);
	}
		public function update_databarang($where,$data,$table){
			$this->load->library('form_validation');
	  		$this->db->where($where);
	  		$this->db->update($table,$data);
	}

}
