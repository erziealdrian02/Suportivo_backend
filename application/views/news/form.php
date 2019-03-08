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
<?php echo form_open("News/tambah", array('enctype'=>'multipart/form-data')); ?>

		<div class="form-group">
			<label>Judul</label>
				<input class="form-control" type="text" name="judul" id="ver" value="<?php echo set_value('versi'); ?>">
		</div>

		<div class="form-group">
			<label for="deskripsi">Isi Rangkuman</label>
				<textarea class="ckeditor" name="rangkum" id="rangkum" value="<?php echo set_value('rangkum'); ?>"></textarea>
		</div>

		<div class="form-group">
			<label for="deskripsi">Isi Full</label>
				<textarea class="ckeditor" name="full" id="full" value="<?php echo set_value('full'); ?>"></textarea>
		</div>
	<hr>
	<em><input style="margin-left: 10px;font-size: 22px;" class="btn btn-primary" type="submit" name="submit" value="Submit"></em>


<?php echo form_close(); ?>

<script>
var ckeditor = CKEDITOR.replace('rangkuman',{
			height:'300px'
});

CKEDITOR.disableAutoInline = true;
CKEDITOR.inline('editable');
</script>
