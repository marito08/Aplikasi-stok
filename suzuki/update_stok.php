<?php 
include 'config.php';
$id = $_POST['id'];
$mobil = $_POST['mobil'];
$warna = $_POST['warna'];
$stok = $_POST['stok'];


mysql_query("update suzuki_stok set mobil='$mobil', warna='$warna',stok='$stok'where no='$id'");
header("location:stok_mobil.php");

?>