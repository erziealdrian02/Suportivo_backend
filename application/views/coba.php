<!DOCTYPE html>
<html>
<head>
	<title>Coba manggil produk_media</title>
</head>
<body>
	<h1>Manggil produk_media database</h1>
	<?php
	$d = $this->db->query("Select*from produk_media where id_media=7")->row()->media;
	echo "<img width=200 height=350 src=\"" . base_url() . "images/$d\" />";
	?>
	<img class="" style="float: right;" src="">
	<div style="float: right;background: black;width: 250px;">
	<?php
	$d = $this->db->query("Select*from produk_media where id_media=5")->row()->media;
	echo "<center><img width=200 height=350 src=\"" . base_url() . "images/$d\" /></center>";
	?>	
	</div>
	<br>
	<center><h1>COBA LAGI</h1></center>
	<br>
	<?php
	$d = $this->db->query("Select*from produk_media where id_media=7")->row()->media;
	echo "<img width=200 height=350 src=\"" . base_url() . "images/$d\" />";
	?>
	<div style="float: right;background: black;width: 250px;">
	<?php
	$d = $this->db->query("Select*from produk_media where id_media=7")->row()->media;
	echo "<center><img width=200 height=350 src=\"" . base_url() . "images/$d\" /></center>";
	?>
	</div>
	<div>
		<center>
			<?php
			$d = $this->db->query("Select*from produk_media where id_media=5")->row()->media;
			echo "<img src=\"" . base_url() . "images/$d\" />";
			?>
		</center>
	</div>	
	<div align="center">
		<h1>Coba bikin artikel di bawah ini</h1>
		<?php
		$d = $this->db->query("Select*from produk_media where id_media=7")->row()->media;
		echo "<video controls=controls src=\"" . base_url() . "images/$d\" />
			 <video>
			 ;"
		?>
	</div>
	<div>
		<h1>Coba bikin artikel di bawah ini</h1>
		<?php
		$d = $this->db->query("Select*from produk_media where id_media=5")->row()->media;
		echo "<video controls=controls src=\"" . base_url() . "images/$d\" />
			 <video>
			 ;"
		?>
	</div>

</body>
</html>