<style type="text/css">
	input.file{
		background-color: #1b2a41;
		border-radius: 10px;
		color: snow;
		font-size: 20px;
	}

	input.tgl{
		border-radius: 10px;
		font-size: 20px;
	}

</style>

<h1>Tambah Media</h1><hr>

<!-- Menampilkan Error jika validasi tidak valid -->
<div style="color: red;"><?php echo (isset($message))? $message : ""; ?></div>
<div class="container" style="width: 85%;">
<!-- <div class="alert alert-danger"><?php echo validation_errors(); ?></div> -->
<?php echo form_open("Gambar/tambah", array('enctype'=>'multipart/form-data')); ?>

		<div class="form-group">
			<label for="file">File</label>
			<input type="file" name="input_gambar" id="file" class="file">
		</div>


		<div>
		<label>Produk</label>
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
		$q = $this->db->query("SELECT*FROM sub_category WHERE category_id_category=2");
		foreach($q->result() as $d){
		?>

			 <option value="<?php echo $d->id_sub_category; ?>"><?php echo $d->nama_sub_category; ?></option>
		<?php
		}
		?>
			</optgroup>


		</select>

		</div>

		<div class="form-group">
		<label for="deskripsi">Deskripsi</label>
			<textarea class="ckeditor" name="input_deskripsi" id="deskripsi" value="<?php echo set_value('input_deskripsi'); ?>"></textarea>
		</div>

	<hr>
	<em><input style="margin-left: 10px;font-size: 22px;" class="btn btn-primary" type="submit" name="submit" value="Submit"></em>

<?php echo form_close(); ?>

<script>
var ckeditor = CKEDITOR.replace('input_deskripsi',{
			height:'300px'
});

CKEDITOR.disableAutoInline = FALSE;
CKEDITOR.inline('editable');
</script>
