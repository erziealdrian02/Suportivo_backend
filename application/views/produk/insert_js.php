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
    <form method="POST" action="<?php echo base_url('crud/insert');?>">
        
        <h3>Spesifikasi untuk Produk</h3>
        <select name="produk" class="form-control" style="width: 200px !important;">
            <option value="">#-Produk-#</option>
            <optgroup label="Elektronik">
        <?php
        $q = $this->db->query("select * from sub_category where category_id_category=1");
        foreach($q->result() as $d){
        ?>  
            
             <option value="<?php echo $d->id_sub_category; ?>"><?php echo $d->nama_sub_category; ?></option>
        <?php 
        }
        ?>
            </optgroup>
            <optgroup label="Perabotan">
        <?php
        $q = $this->db->query("select * from sub_category where category_id_category=2");
        foreach($q->result() as $d){
        ?>  
            
             <option value="<?php echo $d->id_sub_category; ?>"><?php echo $d->nama_sub_category; ?></option>
        <?php 
        }
        ?>
            </optgroup>

        </select>

<div class="box-body table-responsive no-padding">
        <table id="myTableData" class="table table-bordered">
            <br>

            <tr>
                <td><i class="ion-soup-can" style="font-size: 32px;"></i></td>
                <td><b>Name</b></td>
                <td><b>Value</b></td>
                <td><b>Urutan</b></td>
            </tr>
        </table>
</div>
        <button style="margin-left: 10px;" class="btn btn-primary"><i style="font-size: 22px;" class="ion-paper-airplane">&nbsp;Submit</i></button>
    </form>
    &nbsp;
     
    </div>
   &nbsp;
    
     
    </div>
    </body>
    </html>