	<style type="text/css">
		.we{
			text-align: center;
		}
	</style>
	<div class="container" style="width: 85%;">
		<a style="float: right;" class="btn btn-primary" href="<?php echo base_url("user/daftarproduk");?>">Kembali&nbsp;&nbsp;<i class="fa fa-reply"></i></a>
		<h1></h1>
		<hr>
		<h2>Spesifikasi</h2>

		<table class="table table-bordered table-striped" style="font-size: 18px;" >
			<tr style="background-color: #1c2c44;color: snow;">
				<th>Jenis</th>
				<th>Keterangan</th>
			</tr>
<?php
if( ! empty($data)){
	foreach($data as $d){
?>
			<tbody>
			<tr>
				<td><?php echo "$d->nama_spek" ?></td>
				<td><?php echo "$d->value_spek" ?></td>
			</tr>
			</tbody>
<?php
	}
	?>
</table>
	<div class="row">
			<div class="col">
				<a class="btn btn-primary btn-lg" href="<?php echo base_url("user/update/");?><?php echo $d->id_sub_category; ?>">Edit&nbsp;&nbsp;<i class="fa fa-edit"></i> </a>
				<a class="btn btn-danger btn-lg" href="<?php echo base_url("crud/hapus/");?><?php echo $d->id_sub_category; ?>">Hapus&nbsp;&nbsp;<i class="fa fa-trash"></i> </a>
			</div>
		</div>
</div>
	<?php
}else{ // Jika data tidak ada
	echo "<tr><th colspan='5'>Data tidak ada</th></tr>";
}
?>

	</table>
