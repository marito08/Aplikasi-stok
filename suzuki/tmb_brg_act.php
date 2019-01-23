<?php 
include 'config.php';
$mobil=$_POST['mobil'];
$gambar=$_POST['gambar'];
$harga=$_POST['harga'];
$keterangan = $_POST['keterangan'];


mysql_query("Insert into suzuki_mobil values('$mobil','$gambar','$harga','$keterangan')");
header("location:barang.php");

 ?>