<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<div class="row">
			<h3>Edit Form
				<span class="pull-right"><a href="<?php echo base_url(); ?>" class="btn btn-primary"><span class="glyphicon glyphicon-arrow-left"></span> Back</a></span>
			</h3>
			<hr>
			<?php extract($user); ?>
			<form method="POST" action="<?php echo base_url(); ?>user/update_alt/<?php echo $id; ?>">
        <table id="myTableData" class="table table-bordered">
            <br>

            <tr>
                <td><i class="ion-soup-can" style="font-size: 32px;"></i></td>
                <td><b>Judul</b></td>
                <td><b>Rangkuman Berita</b></td>
                <td><b>Berita Full</b></td>
            </tr>
<?php
foreach($data->result() as $d){

?>
           <tbody>
           <tr>
                <td><button class="btn btn-md btn-danger " onClick="Javacsript:deleteRow(this)"><i class="ion-close-round"></i></button>
                </td>

                <td><b><input class="form-control" style="width: 200px !important;" type="text" name="name" value='<?php echo "$d->judul_berita"; ?>' /><br></td>
                <td><b><textarea class="ckeditor" style="width: 300px !important;" name="rangkum"><?php echo "$d->isi_rangkum"; ?></textarea><br></td>
                <td><b><textarea class="ckeditor" style="width: 300px !important;" name="full"><?php echo "$d->isi_full"; ?></textarea><<br></td>
            </tr>
            </tbody>

<?php
}
?>

        </table>
				<button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Update</button>
			</form>
	</div>
</div>
</body>
</html>
