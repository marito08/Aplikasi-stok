<?php 
include 'config.php';
$id=$_GET['id'];
$warna=$_GET['warna'];
$jumlah = $_GET['jumlah'];
$mobil = $_GET['mobil'];


$a=mysql_query("select stok from suzuki_stok where mobil='$mobil' && warna = '$warna' ");
$b=mysql_fetch_array($a);
$kembalikan=$b['stok']+$jumlah;
$c=mysql_query("update suzuki_stok set stok='$kembalikan' where mobil='$mobil' && warna='$warna'");

mysql_query("delete from pjln_suzuki where no='$id' ");
header("location:pjln_suzuki.php");

 ?>