<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class GambarModel extends CI_Model {
	// Fungsi untuk menampilkan semua data gambar
	public function view(){
		$this->db->Order_by('id_media', 'desc');
		return $this->db->get('produk_media')->result();

	}

	// Fungsi untuk melakukan proses upload file
	public function upload(){
		$config['upload_path'] = './images/';
		$config['allowed_types'] = 'jpg|png|jpeg|mp4|mkv|flv';
		$config['max_size']	= '100000';
		$config['remove_space'] = TRUE;

		$this->load->library('upload', $config); // Load konfigurasi uploadnya
		if($this->upload->do_upload('input_gambar')){ // Lakukan upload dan Cek jika proses upload berhasil
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
			'media' => $upload['file']['file_name'],
			'deskripsi'=>$this->input->post('input_deskripsi'),
			'tipe_file' => $upload['file']['file_type'],
			'id_sub_category' => $this->input->post('produk')
		);

		$this->db->insert('produk_media', $data);
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
