<?php 
session_start();
include 'suzuki/config.php';
$uname=$_POST['uname'];
$pass=$_POST['pass'];
$pas=md5($pass);
$level = $_POST['level'];
$query=mysql_query("select * from admin where uname='$uname' and pass='$pas'")or die(mysql_error());
$row = mysql_fetch_array($query);
if($row['level']==1 && $level == 1){
	$_SESSION['uname']=$uname;
	header("location:suzuki/index.php");
}else{
	header("location:index.php?pesan=gagal")or die(mysql_error());
	// mysql_error();
}
// echo $pas;
 ?>