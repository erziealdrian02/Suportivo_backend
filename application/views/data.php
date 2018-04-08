<!--

DITUKER SAMA YANG BARU

-->


<div class="container" style="width: 700px;">
		<div class="row">
			<div class="col-xs-12">
				<h1><i class="fa fa-certificate">Data Produk</i></h1>            	
            </div>
            <div class="col-xs-12 text-right">
                <div class="form-group">
                    <a class="btn btn-primary" href="<?php echo base_url("user/tambah"); ?>"><i class="fa fa-plus"></i> Add New</a>
                </div>
            </div>
        </div>

	
	<table class="table table-striped" style="font-size: 20px;">
	
	<tr>
		<th>Nama Produk</th>
		<th>Versi</th>
		<th colspan="2">Action&nbsp;<i style="float: right;" class="fa fa-database"></i></th>
	</tr>
<?php
if( ! empty($data)){ // Jika data pada database tidak sama dengan empty (alias ada datanya)
	foreach($data as $d){ // Lakukan looping pada variabel gambar dari controller 
?>     
	<tbody>
		<tr>
		<td><?php echo "$d->nama_produk" ?></td>
		<td><?php echo "$d->versi" ?></td>
		<td>
			<a class="btn btn-primary" href="<?php echo base_url("user/detail/");?><?php echo $d->id_produk; ?>">Details&nbsp;&nbsp;<i class="fa fa-search"></i></a>	
		<td>
		</tr>
	</tbody>
<?php
	}

?>
<?php
}else{ // Jika data tidak ada
	echo "<tr><td colspan='5'>Data tidak ada</td></tr>";
}
?>

</table>
</div>
<!--  --> 

