<?php 

include 'config.php';
$tgl=$_POST['tgl'];
$mobil=$_POST['mobil'];
$warna=$_POST['warna'];
$jumlah=$_POST['jumlah'];

$dt=mysql_query("select * from suzuki_stok where mobil='$mobil' && warna='$warna'");
$data=mysql_fetch_array($dt);
$sisa=$data['stok']+$jumlah;
mysql_query("update suzuki_stok set stok='$sisa' where mobil='$mobil' && warna = '$warna'");


mysql_query("insert into brg_msk_suzuki values('','$tgl','$mobil','$warna','$jumlah')")or die(mysql_error());
header("location:brg_msk_suzuki.php");

?>