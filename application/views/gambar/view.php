	<div class="row">
			<div class="col-xs-12">
				<h1><i class="fa fa-certificate">Data Gambar</i></h1>
            </div>
            <div class="col-xs-12 text-right">
                <div class="form-group">
                    <a class="btn btn-primary" href="<?php echo base_url("user/gambar"); ?>"><i class="fa fa-plus"></i> Add New</a>
                </div>
            </div>
        </div>

<div class="box-body table-responsive no-padding">
<table cellpadding="8" class="table table-bordered table-striped">
<tr>
	<th>Media</th>
	<th>Deskripsi</th>
	<th>Nama File</th>
	<th>Tipe File</th>
	<!-- <th>Id Media</th> -->
	<th>Aksi</th>
</tr>

<?php
if( ! empty($gambar)){ // Jika data pada database tidak sama dengan empty (alias ada datanya)
	foreach($gambar as $data){ // Lakukan looping pada variabel gambar dari controller
		?>
		<tr>
		<td>
			<?php
		if(isset(explode("image/",$data->tipe_file)[1]))
		{
			echo "<img src='".base_url("images/".$data->media)."' max width='250' height='300'>";
		} else {
			echo "<video loop=loop controls='controls' src='" . base_url("images/".$data->media) ."' max width='250' height='300'>";
		}
			?>
		</td>
		<td><?php echo "$data->deskripsi" ?></td>
		<td><?php echo "$data->media" ?></td>
		<td><?php echo "$data->tipe_file" ?></td>
		<!-- <td><?php echo "$data->id_media" ?></td> -->
		<td>
			<a class="btn btn-lg btn-danger deleteUser" href="<?php echo base_url("crud/hapus_media/");?><?php echo $data->id_media; ?>" title="Delete"><i class="fa fa-trash"></i></a>
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
