<?php 
include 'header.php';
?>

<h3><span class="glyphicon glyphicon-briefcase"></span>  Detail Barang</h3>
<a class="btn" href="stok_mobil.php"><span class="glyphicon glyphicon-arrow-left"></span>  Kembali</a>

<?php
$id_brg=($_GET['id']);


$det=mysql_query("select * from suzuki_stok where no='$id_brg'")or die(mysql_error());
while($d=mysql_fetch_array($det)){
	?>					
	<table class="table">
		
		<tr>
			<td>Mobil</td>
			<td><?php echo $d['1'] ?></td>
		</tr>
		<tr>
			<td>Warna</td>
			<td><?php echo $d['2'] ?></td>
		</tr>
		
		<tr>
			<td>Stok</td>
			<td> <?php echo $d['3'] ?></td>
		</tr>
		
	</table>
	<?php 
}
?>
<?php include 'footer.php'; ?>