<?php 
include 'config.php';
$id=$_POST['id'];
$mobil=$_POST['mobil'];
$gambar=$_POST['gambar'];
$harga=$_POST['harga'];
$keterangan = $_POST['keterangan'];

mysql_query("update suzuki_mobil set mobil='$mobil', gambar='$gambar', harga='$harga', keterangan='$keterangan' where mobil='$id'");
header("location:barang.php");

?>