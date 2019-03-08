
<?php
 class Multi_Insert extends CI_Controller {

  function __construct() {
   parent::__construct();


   $this->load->library('form_validation'); // digunakan untuk proses validasi yg di input
   //$this->load->database('mydb'); // Load our cart model for our entire class
   $this->load->helper(array('url','form')); // Load our cart model for our entire class
   $this->load->model('crud_model');
  }

  function index2($produk=1) {
    $data['data'] = $this->db->query("Select * From spek2 where id_sub_category=".$produk);
    $this->load->view('produk/insert_js',$data); // Display the page

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
         redirect('multi_insert/index');
            }

      }
  }

  public function produk()
  {
    $data['data'] = $this->db->query("Select * From sub_category");
    $this->load->view('produk/produk');
  }

  public function tambahproduk()
  {
    $data = array(
      'nama_sub_category' => $_POST['nama'] ,
      'deskripsi' => $_POST['deskripsi'] ,
      'category_id_category' => $_POST['kategori']
       );
    $this->db->insert('sub_category',$data);
    redirect('multi_insert/index2');
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
            redirect('multi_insert/index');
      }
  }

      public function hapus($id=0)
      {
        $this->db->delete('spek2', array('id_sub_category' => $id));
        $this->db->delete('sub_category', array('id_sub_category' => $id));

        redirect('multi_insert/index');
      }

      public function data()
      {
        $this->load->helper('form');
        $this->crud_model->view();

      }
      public function index()
      {
        $this->crud_model->produklist();

      }


        public function update($id=1)
        {
          $data['data'] = $this->db->get_where('spek2',array('id_sub_category' => $id ));
          $data['id'] = $id;
          $this->load->view('produk/edit',$data);
        }

        public function prosestambahgambar()
        {
          $photo = $_FILES['Gambar']['name'];
          $judul = $this->input->post('deskripsi');

          if ($photo="") {
          }else {
            $config['upload_path']='./images';
            $config['allowed_types']='jpeg|jpg|gif|png|mp4|mkv';

            $this->load->library('upload',$config);
            if (!$this->upload->do_upload('photo')) {
              echo "Gagal Upload";die();
            }else {
              $photo=$this->upload->data('file_name');
              $allowed_types=$this->upload->data('file_type');
            }

            $data = array(
              'media' => $photo
              'deskripsi' => $judul
              'type_file' => $tipe_file
            );

            $this->Crud->input_data($data, 'produk_media');
            redirect('User/gambar');

          }
        }

}



/* End of file multi_insert.php */
/* Location: ./application/controllers/multi_insert.php */
?>
