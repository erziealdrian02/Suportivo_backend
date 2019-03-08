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


<h1>Tambah Software</h1><hr>

<!-- Menampilkan Error jika validasi tidak valid -->
<div style="color: red;"><?php echo (isset($message))? $message : ""; ?></div>
<div class="container" style="width: 85%;">
	<!-- <div class="alert alert-danger"><?php echo validation_errors(); ?></div> -->
<?php echo form_open("Lunak/tambah", array('enctype'=>'multipart/form-data')); ?>

<div class="form-group">
		<label>Versi</label>
			<input class="form-control" type="text" name="versi" id="ver" value="<?php echo set_value('versi'); ?>">
		</div>

	<div class="row">
		<div class="col">
		<div class="form-group col-md-6">
			<label for="file">File</label>
			<input type="file" name="input_software" id="file" class="file">
		</div>
		</div>

		<div class="col">
		<div class="form-group col-md-5">
		<label for="tgl">Tanggal Update</label>
		<br>
			<input class="tgl" type="date" name="waktu" id="tgl" value="<?php echo set_value('waktu'); ?>">
		</div>
		</div>
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
		$q = $this->db->query("select * from sub_category where category_id_category=2");
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
				<label>Link</label>
					<input class="form-control" type="text" name="link" id="ver" value="<?php echo set_value('link'); ?>">
				</div>

		<div class="form-group">
		<label for="deskripsi">Deskripsi</label>
			<textarea class="ckeditor" name="input_deskripsi" id="deskripsi" value="<?php echo set_value('input_deskripsi'); ?>"></textarea>
		</div>

	<hr>
	<em><input style="margin-left: 10px;font-size: 22px;" class="btn btn-primary" type="submit" name="submit" value="Submit"></em>


<?php echo form_close(); ?>

<script>
var ckeditor = CKEDITOR.replace('deskripsi',{
			height:'300px'
});

CKEDITOR.disableAutoInline = true;
CKEDITOR.inline('editable');
</script>
