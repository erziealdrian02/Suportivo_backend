<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

class User extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('GambarModel');
        $this->load->model('FileModel');
        $this->load->model('SoftwareModel');
        $this->load->model('NewsModel');
        $this->load->model('user_model');
        $this->load->model('crud_model');
        $this->load->helper(array('url','form'));
        $this->isLoggedIn();
    }

    /**
     * This function used to load the first screen of the user
     */
    /*public function index5()
    {
        $this->global['pageTitle'] = 'DaunBiru : Dashboard';
        $this->global['content'] = $this->load->view('coba/dashboard1', false, true);

        $this->loadViews("dashboard", $this->global, NULL , NULL);
    }*/

    public function index()
    {
        $this->global['pageTitle'] = 'DaunBiru : Look';
        $this->global['isi'] = $this->load->view('pilih', false, true);

        $this->loadViews("v_pilih", $this->global, NULL , NULL);
    }

    // Control Produk
    public function index2($produk=1) {
    $data['data'] = $this->db->query("Select * From spek2 where id_sub_category=".$produk);
    $this->global['pageTitle'] = 'DaunBiru : Spesifikasi';
    $this->global['isi'] = $this->load->view('produk/insert_js', $data, true);
    $this->loadViews("spesifikasi", $this->global, NULL , NULL);

    }

    public function produk()
      {
        $data['data'] = $this->db->query("Select * From sub_category");
        $this->global['pageTitle'] = 'DaunBiru : Rinci';
        $this->global['isi'] = $this->load->view('produk/produk',$data, true);
        $this->loadViews("tampil", $this->global, NULL , NULL);
      }

    public function detail($id)
    {
        $this->load->library('form_validation');
        $this->load->helper('form');
        $this->db->Order_by('num', 'ASC');
        $where = array('id_sub_category' => $id);
        $data['data'] = $this->GambarModel->edit_databarang($where,'spek2','sub_category')->result();
        $this->global['pageTitle'] = 'DaunBiru : Rinci';
        $this->global['isi'] = $this->load->view('Ddata',$data, true);
        $this->loadViews("Detail2", $this->global, NULL , NULL);


    }
    public function daftarproduk()
      {
        $this->load->library('form_validation');
        $this->load->helper('form');
        $data['data'] = $this->crud_model->produk()->result();
        $this->global['pageTitle'] = 'DaunBiru : List';
        $this->global['isi'] = $this->load->view('produk/list',$data, true);
        $this->loadViews("Detail", $this->global, NULL , NULL);

      }

    public function update($id=1)
       {
          $this->db->Order_by('num','ASC');
          $data['data'] = $this->db->get_where('spek2',array('id_sub_category' => $id ));
          $data['id'] = $id;
          $this->global['pageTitle'] = 'DaunBiru : Edit';
          $this->global['isi'] = $this->load->view('produk/edit', $data, true);
          $this->loadViews("update_produk", $this->global, NULL , NULL);
        }

    // Control Tambah Gambar
    public function gambar()
    {
        $this->load->library('form_validation');
        $this->global['pageTitle'] = 'DaunBiru : Tambah Media';
        $this->global['isi'] = $this->load->view('gambar/form',false, true);

        $this->loadViews("media", $this->global, NULL , NULL);

    }

    public function manage()
    {
        $data['gambar'] = $this->GambarModel->view();
        $this->load->library('form_validation');
        $this->global['pageTitle'] = 'DaunBiru : Tambah Media';
        $this->global['isi'] = $this->load->view('gambar/view' , $data, true);

        $this->loadViews("managemedia", $this->global, NULL , NULL);
    }

    // Control Tambah File
    public function file()
    {
        $this->load->library('form_validation');
        $this->global['pageTitle'] = 'DaunBiru : Tambah Dokumen';
        $this->global['isi'] = $this->load->view('file/form',false, true);

        $this->loadViews("dokumen", $this->global, NULL , NULL);

    }

    public function managefile($value='')
    {
        $data['file'] = $this->FileModel->view();
        $this->load->library('form_validation');
        $this->global['pageTitle'] = 'DaunBiru : Tambah Dokumen';
        $this->global['isi'] = $this->load->view('file/view' , $data, true);

        $this->loadViews("managefile", $this->global, NULL , NULL);
    }

    // Control Tambah Software
    public function software()
    {
        $this->load->library('form_validation');
        $this->global['pageTitle'] = 'DaunBiru : Tambah Software';
        $this->global['isi'] = $this->load->view('software/form',false, true);

        $this->loadViews("v_software", $this->global, NULL , NULL);

    }

    public function managesoftware()
    {
        $data['software'] = $this->SoftwareModel->view();
        $this->load->library('form_validation');
        $this->global['pageTitle'] = 'DaunBiru : Tambah Software';
        $this->global['isi'] = $this->load->view('software/view' , $data, true);

        $this->loadViews("managesoftware", $this->global, NULL , NULL);
    }

    // Control Tambah Berita
    public function news()
    {

          $this->load->model('user_model');
          $this->global['pageTitle'] = 'DaunBiru : Tambah Berita';
          $this->global['isi'] = $this->load->view('news/form',false, true);

          $this->loadViews("v_berita", $this->global, $data, NULL);
    }

    public function managenews()
    {
        $data['news'] = $this->NewsModel->view();
        $this->load->library('form_validation');
        $this->global['pageTitle'] = 'DaunBiru : Tambah Berita';
        $this->global['isi'] = $this->load->view('news/view' , $data, true);

        $this->loadViews("managenews", $this->global, NULL , NULL);
    }

    public function update_berita($id=1)
     {
        $this->db->Order_by('id_berita');
        $data['data'] = $this->db->get_where('berita',array('id_berita' => $id ));
        $data['id'] = $id;
        $this->global['pageTitle'] = 'DaunBiru : Edit';
        $this->global['isi'] = $this->load->view('news/edit', $data, true);
        $this->loadViews("update_berita", $this->global, NULL , NULL);
      }

      public function update_alt($id){
    		$user['judul_berita'] = $this->input->post('name');
    		$user['isi_rangkum'] = $this->input->post('rangkum');
    		$user['isi_full'] = $this->input->post('full');

        $query = $this->NewsModel->updateuser($user, $id);
        return redirect('user/managenews');

      }

    /**
     * This function is used to load the user list
     */
    function userListing()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $searchText = $this->security->xss_clean($this->input->post('searchText'));
            $data['searchText'] = $searchText;

            $this->load->library('pagination');

            $count = $this->user_model->userListingCount($searchText);

      			$returns = $this->paginationCompress ( "userListing/", $count, 5 );

            $data['userRecords'] = $this->user_model->userListing($searchText, $returns["page"], $returns["segment"]);

            $this->global['pageTitle'] = 'DaunBiru : User Listing';

            $this->loadViews("users", $this->global, $data, NULL);
        }
    }

    /**
     * This function is used to load the add new form
     */
    function addNew()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->load->model('user_model');
            $data['roles'] = $this->user_model->getUserRoles();

            $this->global['pageTitle'] = 'DaunBiru : Add New User';

            $this->loadViews("addNew", $this->global, $data, NULL);
        }
    }

    /**
     * This function is used to check whether email already exist or not
     */
    function checkEmailExists()
    {
        $userId = $this->input->post("userId");
        $email = $this->input->post("email");

        if(empty($userId)){
            $result = $this->user_model->checkEmailExists($email);
        } else {
            $result = $this->user_model->checkEmailExists($email, $userId);
        }

        if(empty($result)){ echo("true"); }
        else { echo("false"); }
    }

    /**
     * This function is used to add new user to the system
     */
    function addNewUser()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->load->library('form_validation');

            $this->form_validation->set_rules('fname','Full Name','trim|required|max_length[128]');
            $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
            $this->form_validation->set_rules('password','Password','required|max_length[20]');
            $this->form_validation->set_rules('cpassword','Confirm Password','trim|required|matches[password]|max_length[20]');
            $this->form_validation->set_rules('role','Role','trim|required|numeric');
            $this->form_validation->set_rules('mobile','Mobile Number','required|min_length[10]');

            if($this->form_validation->run() == FALSE)
            {
                $this->addNew();
            }
            else
            {
                $name = ucwords(strtolower($this->security->xss_clean($this->input->post('fname'))));
                $email = $this->security->xss_clean($this->input->post('email'));
                $password = $this->input->post('password');
                $roleId = $this->input->post('role');
                $mobile = $this->security->xss_clean($this->input->post('mobile'));

                $userInfo = array('email'=>$email, 'password'=>getHashedPassword($password), 'roleId'=>$roleId, 'name'=> $name,
                                    'mobile'=>$mobile, 'createdBy'=>$this->vendorId, 'createdDtm'=>date('Y-m-d H:i:s'));

                $this->load->model('user_model');
                $result = $this->user_model->addNewUser($userInfo);

                if($result > 0)
                {
                    $this->session->set_flashdata('success', 'New User created successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'User creation failed');
                }

                redirect('addNew');
            }
        }
    }


    /**
     * This function is used load user edit information
     * @param number $userId : Optional : This is user id
     */
    function editOld($userId = NULL)
    {
        if($this->isAdmin() == TRUE || $userId == 1)
        {
            $this->loadThis();
        }
        else
        {
            if($userId == null)
            {
                redirect('userListing');
            }

            $data['roles'] = $this->user_model->getUserRoles();
            $data['userInfo'] = $this->user_model->getUserInfo($userId);

            $this->global['pageTitle'] = 'DaunBiru : Edit User';

            $this->loadViews("editOld", $this->global, $data, NULL);
        }
    }


    /**
     * This function is used to edit the user information
     */
    function editUser()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->load->library('form_validation');

            $userId = $this->input->post('userId');

            $this->form_validation->set_rules('fname','Full Name','trim|required|max_length[128]');
            $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
            $this->form_validation->set_rules('password','Password','matches[cpassword]|max_length[20]');
            $this->form_validation->set_rules('cpassword','Confirm Password','matches[password]|max_length[20]');
            $this->form_validation->set_rules('role','Role','trim|required|numeric');
            $this->form_validation->set_rules('mobile','Mobile Number','required|min_length[10]');

            if($this->form_validation->run() == FALSE)
            {
                $this->editOld($userId);
            }
            else
            {
                $name = ucwords(strtolower($this->security->xss_clean($this->input->post('fname'))));
                $email = $this->security->xss_clean($this->input->post('email'));
                $password = $this->input->post('password');
                $roleId = $this->input->post('role');
                $mobile = $this->security->xss_clean($this->input->post('mobile'));

                $userInfo = array();

                if(empty($password))
                {
                    $userInfo = array('email'=>$email, 'roleId'=>$roleId, 'name'=>$name,
                                    'mobile'=>$mobile, 'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));
                }
                else
                {
                    $userInfo = array('email'=>$email, 'password'=>getHashedPassword($password), 'roleId'=>$roleId,
                        'name'=>ucwords($name), 'mobile'=>$mobile, 'updatedBy'=>$this->vendorId,
                        'updatedDtm'=>date('Y-m-d H:i:s'));
                }

                $result = $this->user_model->editUser($userInfo, $userId);

                if($result == true)
                {
                    $this->session->set_flashdata('success', 'User updated successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'User updation failed');
                }

                redirect('userListing');
            }
        }
    }


    /**
     * This function is used to delete the user using userId
     * @return boolean $result : TRUE / FALSE
     */
    function deleteUser()
    {
        if($this->isAdmin() == TRUE)
        {
            echo(json_encode(array('status'=>'access')));
        }
        else
        {
            $userId = $this->input->post('userId');
            $userInfo = array('isDeleted'=>1,'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));

            $result = $this->user_model->deleteUser($userId, $userInfo);

            if ($result > 0) { echo(json_encode(array('status'=>TRUE))); }
            else { echo(json_encode(array('status'=>FALSE))); }
        }
    }

    /**
     * This function is used to load the change password screen
     */
    function loadChangePass()
    {
        $this->global['pageTitle'] = 'DaunBiru : Change Password';

        $this->loadViews("changePassword", $this->global, NULL, NULL);
    }


    /**
     * This function is used to change the password of the user
     */
    function changePassword()
    {
        $this->load->library('form_validation');

        $this->form_validation->set_rules('oldPassword','Old password','required|max_length[20]');
        $this->form_validation->set_rules('newPassword','New password','required|max_length[20]');
        $this->form_validation->set_rules('cNewPassword','Confirm new password','required|matches[newPassword]|max_length[20]');

        if($this->form_validation->run() == FALSE)
        {
            $this->loadChangePass();
        }
        else
        {
            $oldPassword = $this->input->post('oldPassword');
            $newPassword = $this->input->post('newPassword');

            $resultPas = $this->user_model->matchOldPassword($this->vendorId, $oldPassword);

            if(empty($resultPas))
            {
                $this->session->set_flashdata('nomatch', 'Your old password not correct');
                redirect('loadChangePass');
            }
            else
            {
                $usersData = array('password'=>getHashedPassword($newPassword), 'updatedBy'=>$this->vendorId,
                                'updatedDtm'=>date('Y-m-d H:i:s'));

                $result = $this->user_model->changePassword($this->vendorId, $usersData);

                if($result > 0) { $this->session->set_flashdata('success', 'Password updation successful'); }
                else { $this->session->set_flashdata('error', 'Password updation failed'); }

                redirect('loadChangePass');
            }
        }
    }

    /**
     * Page not found : error 404
     */
    function pageNotFound()
    {
        $this->global['pageTitle'] = 'DaunBiru : 404 - Page Not Found';

        $this->loadViews("404", $this->global, NULL, NULL);
    }

    /**
     * This function used to show login history
     * @param number $userId : This is user id
     */
    function loginHistoy($userId = NULL)
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $userId = ($userId == NULL ? $this->session->userdata("userId") : $userId);

            $searchText = $this->input->post('searchText');
            $fromDate = $this->input->post('fromDate');
            $toDate = $this->input->post('toDate');

            $data["userInfo"] = $this->user_model->getUserInfoById($userId);

            $data['searchText'] = $searchText;
            $data['fromDate'] = $fromDate;
            $data['toDate'] = $toDate;

            $this->load->library('pagination');

            $count = $this->user_model->loginHistoryCount($userId, $searchText, $fromDate, $toDate);

            $returns = $this->paginationCompress ( "login-history/".$userId."/", $count, 5, 3);

            $data['userRecords'] = $this->user_model->loginHistory($userId, $searchText, $fromDate, $toDate, $returns["page"], $returns["segment"]);

            $this->global['pageTitle'] = 'DaunBiru : User Login History';

            $this->loadViews("loginHistory", $this->global, $data, NULL);
        }
    }
}

?>
