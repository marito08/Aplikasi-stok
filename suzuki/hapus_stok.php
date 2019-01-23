<?php 
include 'config.php';
$id=$_GET['id'];
mysql_query("delete from suzuki_stok where no='$id'");
header("location:stok_mobil.php");

?>