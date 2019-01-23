<?php 
include 'config.php';
$mobil=$_POST['mobil'];
$warna = $_POST['warna'];
$stok = $_POST['stok'];



mysql_query("Insert into suzuki_stok values('','$mobil','$warna','$stok')");
header("location:stok_mobil.php");

 ?>