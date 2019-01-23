<?php 
include 'config.php';
$id=$_GET['id'];
mysql_query("delete from suzuki_mobil where mobil='$id'");
header("location:barang.php");

?>