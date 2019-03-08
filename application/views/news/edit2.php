<script>
var ckeditor = CKEDITOR.replace('value[]',{
            width:'200px'
});

CKEDITOR.disableAutoInline = true;
CKEDITOR.inline('editable');
</script>
<script type="text/javascript">
function addRow() {
        // var myName = document.getElementById("name");
        // var age = document.getElementById("age");
        var table = document.getElementById("myTableData");
        var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
        // row.insertCell(0).innerHTML= '<input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)">';
        // row.insertCell(1).innerHTML= 'myName.value';
        // row.insertCell(2).innerHTML= age.value;

        row.insertCell(0).innerHTML= '<button class="btn btn-md btn-danger " onClick="Javacsript:deleteRow(this)"><i class="ion-close-round"></i></button>';
        row.insertCell(1).innerHTML= '<b><input class="form-control" style="width: 200px !important;" type="text" name="name[]" /></b>';
        row.insertCell(2).innerHTML= '<b><textarea id="newEditor__' + rowCount + '" class="ckeditor" name="value[]"></textarea></b>';
        row.insertCell(3).innerHTML= '<b><input class="form-control" style="width: 70px !important;" type="number" name="urut[]" /></b>';
        CKEDITOR.replace( 'newEditor__' + rowCount );
    }

    function deleteRow(obj) {
        var index = obj.parentNode.parentNode.rowIndex;
        var table = document.getElementById("myTableData");
        table.deleteRow(index);
    }

    </script>
<div id="mydata">
    <body onload="load()">
    <div id="myform">
    </div>
    <br/><br/>
    <div id="mydata">
    <button style="right: 0px;position: fixed;" class="btn btn-lg btn-primary" id="add" onclick="addRow()"><i class="ion-plus-round"></i></button>
    <br>
    <?php
    $q = $this->db->query("select * from berita where id_berita=".$id);
        foreach($q->result() as $d){
            ?>
            <b><h1 style="margin-left: 20px; font-size: 38px;"><?php echo $d->nama_sub_category ?></h1></b>
            <?php
        }
        ?>
    <form method="POST" action="<?php echo base_url('crud/edit2/'.$id);?>">

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

                <td><b><input class="form-control" style="width: 200px !important;" type="text" name="name[]" value='<?php echo "$d->judul_berita"; ?>' /><br></td>
                <td><b><textarea class="ckeditor" style="width: 300px !important;" name="rangkum[]"><?php echo "$d->isi_rangkum"; ?></textarea><br></td>
                <td><b><textarea class="ckeditor" style="width: 300px !important;" name="full[]"><?php echo "$d->isi_full"; ?></textarea><<br></td>
            </tr>
            </tbody>

<?php
}
?>

        </table>
        <button style="margin-left: 10px;" class="btn btn-primary"><i style="font-size: 22px;" class="ion-paper-airplane">&nbsp;Submit</i></button>
    </form>
    &nbsp;

    </div>
    <br>
            <div class="col-xs-12 text-left">
                <div class="form-group">
                    <a class="btn btn-primary" href="<?php echo base_url('user/managenews'); ?>"><i class="fa fa-reply"></i> Back</a>
                </div>
            </div>
