
<!--

DITUKER SAMA YANG BARU

-->



<!DOCTYPE html>
<html>
<head>
	<title>Halaman Isi Data</title>
	<style type="text/css">
		input:focus,textarea:focus{
			transition: 1s;
			animation-duration: 2s; 
		}
		h3{
			color: #1c2833;
			text-shadow: 2px 0px 2px;
		}

	</style>
</head>


<body>
	<div class="container" style="width: 850px;">
		<a class="btn btn-primary" href="<?php echo base_url("user/lihat");?>">Kembali&nbsp;&nbsp;<i class="fa fa-reply"></i></a>
		<h1><i class="fa fa-pencil">Isi Data Produk</i></h1>
		<!--<div class="alert alert-danger"><?php echo validation_errors(); ?></div>-->
		<?php echo form_open("user/tambah"); ?>
			<h3>General</h3>
			<div class="form-group">
				<label for="produk">Nama Produk </label>
			<input type="text" class="form-control" name="nama_produk" id="produk">
	    	</div>
			<br>
		
			<div class="form-group">
				<label for="ver">Versi</label>
			<select class="form-control" name="versi" id="ver">
  			<option>Select Version</option>
  			<option value="1.0.0">1.0.0</option>
  			<option value="1.0.1">1.0.1</option>
			</select>
			</div>
			<br>
			<div class="form-group">
				<label for="layar">Diplay layar</label>
			<input type="text" class="form-control" name="display" id="layar" placeholder="inch...">
			</div>
			<br>
			<div class="form-group">
				<label for="res">Resolusi layar</label>
			<input type="text" class="form-control" name="resolusi" id="res" placeholder="[width] x [height] pixel">
			<span class="help-block">Example : 1280 x 720 pixel (using spaces)</span>
			</div>
			<br>
			<div class="form-group">
				<label for="dim">Dimensi</label>
       		<input type="text" class="form-control" name="dimensi" id="dim" placeholder="[width] x [height] x [depth]">
       		<span class="help-block">Example : 225 x 177 x 45 (using spaces)</span>
			</div>
			<br>
			<div class="form-group">
				<label for="war">Warna</label>
			<input type="text" class="form-control" name="warna" id="war">
			</div>
			<br>
			<div class="form-group">
				<label for="berat">Berat</label>
				<div class="input-group">
					<input type="text" class="form-control" name="weight" id="berat">
					<div class="input-group-addon">Kg</div>
				</div>
			</div>
			<br>
			<div class="form-group">
				<label for="batre">Baterai</label>
				<div class="input-group">
					<input type="text" class="form-control" name="battery" id="batre" placeholder="merk [num]_volt [num]_mAh">
					<div class="input-group-addon">mAh</div>
				</div>
				<span class="help-block">Example : Cat 10 Volt 4000 mAh (using spaces)</span>
			</div>
			<br>
			<h3>System</h3>
			<br>
			<div class="form-group">
				<label for="so">Sistem Operasi</label>
			<input type="text" class="form-control" name="os" id="so">
			</div>
			<br>
			<div class="form-group">
				<label for="pro">Processor</label>
			<input type="text" class="form-control" name="processor" id="pro" placeholder="processor_merk">
			<span class="help-block">Example : ABC Razor C7 (using spaces)</span>
			</div>
			<br>
			<label>Memory</label>
			<br>
			<div class="form-group mb-6">
				<div class="input-group">
					<input type="text" class="form-control" name="memory" placeholder="System Memory">
					<div class="input-group-addon">MB</div>
				</div>
				<span class="help-block">Memory sistem.</span>
			</div>
			<br>
		
			<h3>Note</h3>
			<br>
			<div class="form-group">
				<label for="ket">Keterangan</label>
			</div>
			<textarea class="ckeditor" name="keterangan" id="ket"></textarea>
			
			<div>
				<center>
			<button>Kirim</button>
				</center>
			</div>
		<?php echo form_close(); ?>
	</div>

<script>
var ckeditor = CKEDITOR.replace('keterangan',{
			height:'200px'
});

CKEDITOR.disableAutoInline = true;
CKEDITOR.inline('editable');
</script>
</body>
</html>
