<!DOCTYPE html>
<html>
<head>
	<title>Halaman Pilih Tampilan Data</title>
</head>
<body>
	<div class="container" style="width: 75%;">
	<h1>Pilih Tampilan Data</h1>
	<div class="row">
		<div class="col-lg-7 col-md-5 col-sm-4 ">
              <!-- small box -->
              <div class="small-box bg-gray">
                <div class="inner">
                  <h3>Produk</h3>
                  <p>Produk Terinput</p>
                </div>
                <div class="icon">
                  <i class="ion-android-phone-portrait"></i>
                </div>
                <a href="<?php echo base_url("user/daftarproduk"); ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
        <div class="col-lg-5 col-md-5 col-sm-4 ">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>Media</h3>
                  <p>Media Dari Setiap Produk</p>
                </div>
                <div class="icon">
                  <i class="ion-images"></i>
                </div>
                <a href="<?php echo base_url("user/manage"); ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
    </div><!-- ./row1 -->
    <div class="row">
        <div class="col-lg-5 col-md-5 col-sm-4 ">
              <!-- small box -->
              <div class="small-box bg-orange">
                <div class="inner">
                  <h3>File</h3>
                  <p>Panduan Penggunaan</p>
                </div>
                <div class="icon">
                  <i class="ion-document-text"></i>
                </div>
                <a href="<?php echo base_url("user/managefile"); ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
        <div class="col-lg-7 col-md-5 col-sm-4 ">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>Software</h3>
                  <p>Software Untuk Produk</p>
                </div>
                <div class="icon">
                  <i class="ion-load-b"></i>
                </div>
                <a href="<?php echo base_url("user/managesoftware"); ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
	</div>
</div>  

</body>
</html>