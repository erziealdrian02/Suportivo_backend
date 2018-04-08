<?php 
/**
* 
*/
class Crud_model extends CI_Model
{
	
	public function view($produk = 1)
	{
		if($_POST)
		{
			$produk = $_POST['produk'];
		}
		$this->db->query("Select * From spek2 where id_sub_category=".$produk." order by num asc")->result();
		
	}

	public function produklist()
	{
		$data['data'] = $this->db->query("Select * from sub_category");

		$this->load->view('produk/list',$data);
	}

	public function produk()
	{
		return $this->db->get('sub_category');
	}

}

?>