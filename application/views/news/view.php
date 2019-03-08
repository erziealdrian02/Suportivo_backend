<div class="row">
		<div class="col-xs-12">
			<h1><i class="fa fa-certificate">Data Berita</i></h1>
					</div>
					<div class="col-xs-12 text-right">
							<div class="form-group">
									<a class="btn btn-primary" href="<?php echo base_url("user/news"); ?>"><i class="fa fa-plus"></i> Add New</a>
							</div>
					</div>
			</div>

<div class="box-body table-responsive no-padding">
<table cellpadding="8" class="table table-bordered table-striped">
<tr>
	<th>Judul</th>
	<th>Isi Rangkuman</th>
	<th>Isi Full</th>
</tr>

<?php
if( ! empty($news)){ // Jika data pada database tidak sama dengan empty (alias ada datanya)
foreach($news as $data){ // Lakukan looping pada variabel gambar dari controller
	?>
	<tr>
		<td><em><?php echo "$data->judul_berita" ?></em></td>
		<td><em><?php echo "$data->isi_rangkum" ?></em></td>
		<td><em><?php echo "$data->isi_full" ?></em></td>
	<td>
		<a class="btn btn-primary" href="<?php echo base_url("user/update_berita/");?><?php echo $data->id_berita; ?>" title="Delete"><i class="fa fa-edit"></i></a>
	</br></br>
		<a class="btn btn-lg btn-danger deleteUser" href="<?php echo base_url("crud/hapus_berita/");?><?php echo $data->id_berita; ?>" title="Delete"><i class="fa fa-trash"></i></a>

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
