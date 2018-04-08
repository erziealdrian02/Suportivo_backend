<!-- 

Gadipake

 --><div class="container" style="width: 700px;">
		
	<table border="2">
	
	<tr>
		<th>Nama Spek</th>
		<th>Keterangan</th>
	</tr>	
<?php
if( ! empty($data)){ // Jika data pada database tidak sama dengan empty (alias ada datanya)

	foreach($data->result() as $d){ // Lakukan looping pada variabel gambar dari controller 
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
<?php
}else{ // Jika data tidak ada
	echo "<tr><td colspan='5'>Data tidak ada</td></tr>";
}
?>

</table>
<a href="<?php echo base_url('user/daftarproduk'); ?>">&laquo;Back</a>
</div>
<!--  --> 

