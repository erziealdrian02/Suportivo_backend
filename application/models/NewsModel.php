<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class NewsModel extends CI_Model {
	// Fungsi untuk menampilkan semua data gambar
	public function view(){
		$this->db->Order_by('id_berita', 'desc');
		return $this->db->get('berita')->result();

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

	// Fungsi untuk menyimpan data ke database
	public function save(){
		$data = array(
			'judul_berita' => $this->input->post('judul'),
			'isi_rangkum'=>$this->input->post('rangkum'),
			'isi_full' => $this->input->post('full'),
		);

		$this->db->insert('berita', $data);
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
