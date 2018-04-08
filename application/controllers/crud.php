<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
* 
*/
class Crud extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('GambarModel');
		$this->load->model('FileModel');
		$this->load->model('SoftwareModel');
		$this->load->model('crud_model');
		$this->load->helper('form');
	}

	public function insert()
    {
      if($_POST){
        $count = count($_POST['name']);

        $data =array();
        for($i=0; $i<$count; $i++) {
        $data = array(
             'nama_spek' => $_POST['name'][$i], 
             'value_spek' => $_POST['value'][$i],
             'num' => $_POST['urut'][$i], 
             'id_sub_category' => $_POST['produk'][0]
             );
         $this->db->insert('spek2', $data);
         
        }
        redirect('user/daftarproduk');
        }
    }


    public function tambahproduk()
      {
        $data = array(
          'nama_sub_category' => $_POST['nama'] ,
          'deskripsi' => $_POST['deskripsi'] ,
          'category_id_category' => $_POST['kategori']
           );
        $this->db->insert('sub_category',$data);
        redirect('user/index2');
      }

    public function edit($id=0)
      {
          if($_POST){
            $count = count($_POST['name']);

            $data =array();
            $xxdata = $this->db->get_where('spek2', array('id_sub_category' => $id))->row();
            $this->db->delete('spek2', array('id_sub_category' => $id));
            for($i=0; $i<$count; $i++) {
            $data = array(
                 'nama_spek' => $_POST['name'][$i], 
                 'value_spek' => $_POST['value'][$i],
                 'num' => $_POST['urut'][$i], 
                 'id_sub_category' => $xxdata->id_sub_category
                 );
             
             $this->db->insert('spek2', $data);
                }
                redirect('user/daftarproduk');
          }
      }

    public function hapus($id=0)
      {
        $this->db->delete('spek2', array('id_sub_category' => $id));
        $this->db->delete('sub_category', array('id_sub_category' => $id));

        redirect('user/daftarproduk');
      }



	public function hapus_media($id_media){
  		$where = array('id_media' => $id_media);
  		$this->GambarModel->hapus_databarang($where,'produk_media');
  		redirect('user/manage');
 	}


	public function hapus_file($id_file){
  		$where = array('id' => $id_file);
  		$this->GambarModel->hapus_databarang($where,'download');
  		redirect('user/managefile');
 	}

	public function hapus_software($id_software){
  		$where = array('id_software' => $id_software);
  		$this->GambarModel->hapus_databarang($where,'produk_software');
  		redirect('user/managesoftware');
 	}
}