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

<?php echo form_open_multipart('Multi_insert/prosestambahgambar'); ?>
Photo <input type="file" name="Gambar"/></br></br></br></br>
Deskripsi <input type="textarea" name="deskripsi"/></br></br></br></br></br>
<input type="submit" value="OK" action="Multi_insert/prosestambahgambar"/></br>
<?php echo form_close(); ?>
