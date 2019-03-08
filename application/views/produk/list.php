		<div class="row">
            <div class="col-xs-12 text-center">
                <div class="form-group">
                    <a style="font-size:20px; " class="btn btn-primary" href="<?php echo base_url("user/produk");?>"><i class="fa fa-plus"></i> Add New</a>
                </div>
            </div>
        </div>

	<table class="table table-striped" style="font-size: 20px;width: 40%;margin:auto;vertical-align: middle;text-align: center;">
	<tr>
		<th style="text-align: center;">Produk</th>
		<th style="text-align: center;">Aksi<i style="float: right;" class="fa fa-database"></i></th>
	</tr>
<?php
if( ! empty($data)){ // Jika data pada database tidak sama dengan empty (alias ada datanya)

	foreach($data as $d){ // Lakukan looping pada variabel gambar dari controller
?>
	<tbody>
		<tr>
		<td><?php echo "$d->nama_sub_category" ?></td>
		<td>
			<a class="btn btn-primary" href="<?php echo base_url("user/update/");?><?php echo $d->id_sub_category; ?>">Edit&nbsp;&nbsp;<i class="fa fa-edit"></i></a>
			<a class="btn btn-primary" href="<?php echo base_url("user/detail/");?><?php echo $d->id_sub_category; ?>">Details&nbsp;&nbsp;<i class="fa fa-search"></i></a>
			<a class="btn btn-primary" href="<?php echo base_url("crud/hapus/");?><?php echo $d->id_sub_category; ?>">Delete&nbsp;&nbsp;<i class="fa fa-trash"></i></a>
		</td>
		</tr>
	</tbody>
		<?php
			}

		?>
		<?php
		}else{ // Jika data tidak ada
			echo "<tr><	td colspan='5'>Data tidak ada</td></tr>";
		}
		?>

		</table>

		<!--
		<form method="POST" action="<?php echo base_url('user/data');?>">
		<select name="produk" class="form-control" style="width: 200px !important;">
			<option value="">#-Produk-#</option>
			<optgroup label="Elektronik">
		<?php
		$q = $this->db->query("select * from sub_category where category_id_category=1");
		foreach($q->result() as $d){
		?>

			 <option value="<?php echo $d->id_sub_category; ?>"><?php echo $d->nama_sub_category; ?></option>
		<?php
		}
		?>
			</optgroup>
			<optgroup label="Perabotan">
		<?php
		$q = $this->db->query("select * from sub_category where category_id_category=2");
		foreach($q->result() as $d){
		?>

			 <option value="<?php echo $d->id_sub_category; ?>"><?php echo $d->nama_sub_category; ?></option>
		<?php
		}
		?>
			</optgroup>


		</select>
		<button>lihat</button>
		</form> -->

<!--  -->
