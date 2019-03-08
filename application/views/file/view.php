<style type="text/css">
	.table-bordered{
		font-size: 18px !important;
	}
</style>

<div class="row">
			<div class="col-xs-12">
				<h1><i class="fa fa-certificate">Data Dokumen</i></h1>
            </div>
            <div class="col-xs-12 text-right">
                <div class="form-group">
                    <a class="btn btn-primary" href="<?php echo base_url("user/file"); ?>"><i class="fa fa-plus"></i> Add New</a>
                </div>
            </div>
        </div>

<div class="box-body table-responsive no-padding">
<table class="table table-bordered table-striped" cellpadding="8">
<tr>
	<th>Nama File</th>
	<th>Deskripsi</th>
	<th>Versi</th>
	<th>Link</th>
	<th>Tanggal</th>
	<th>Aksi</th>
</tr>

<?php
if( ! empty($file)){ // Jika data pada database tidak sama dengan empty (alias ada datanya)
	foreach($file as $data){ // Lakukan looping pada variabel gambar dari controller
		?>
		<tr>
		<td><em><?php echo "$data->nama_dokumen" ?></em></td>
		<td><em><?php echo "$data->keterangan" ?></em></td>
		<td><em><?php echo "$data->versi" ?></em></td>
		<td><em><?php echo "$data->link" ?></em></td>
		<td><em><?php echo "$data->waktu_update" ?></em></td>
		<td>
			<a class="btn btn-lg btn-danger deleteUser" href="<?php echo base_url("crud/hapus_file/");?><?php echo $data->id; ?>" title="Delete"><i class="fa fa-trash"></i></a>
		</td>
		</tr>

	<?php
	}
}else{ // Jika data tidak ada
	echo "<tr><td colspan='5'>Data tidak ada</td></tr>";
}
?>
</table>
</div>
<br>
			<div class="col-xs-12 text-left">
                <div class="form-group">
                    <a class="btn btn-primary" href="<?php echo base_url('user/pilih'); ?>"><i class="fa fa-reply"></i> Back</a>
                </div>
            </div>
