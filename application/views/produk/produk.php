
<div class="container" style="width: 75%;">
<h1><i class="fa fa-pencil">Isi Data Produk</i></h1>
</div>

	<form method="POST" action="<?php echo base_url('crud/tambahproduk');?>">
		<div class="form-group">
			<input style="width: 65%;vertical-align: middle;margin: auto;" class="form-control" type="text" name="nama" placeholder="Nama Produk" id="produk">
	    </div>	
		<div class="form-group">
			<select style="width: 65%;vertical-align: middle;margin: auto;" class="form-control" name="kategori">
				<option>Kategori Produk</option>
				<?php
				$q = $this->db->query("select * from category");
				foreach($q->result() as $d){
				?>
					<option value="<?php echo $d->id_category; ?>"><?php echo $d->nama_category; ?></option>
				<?php 
				}
				?>
			</select>
		</div>
		<div class="container" style="width: 65%;">
			<label for="ket">Deskripsi Produk</label>
			<textarea class="ckeditor" name="deskripsi" id="ket"></textarea>	
		</div>
		
		<br>
		<br>
		<button style="margin-left: 10px;" class="btn btn-primary"><i style="font-size: 22px;" class="ion-paper-airplane">&nbsp;Submit</i></button>
	</form>


<script>
var ckeditor = CKEDITOR.replace('deskripsi',{
			height:'200px'
});

CKEDITOR.disableAutoInline = true;
CKEDITOR.inline('editable');
</script>