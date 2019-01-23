<?php 
include 'header.php';
?>

<h3><span class="glyphicon glyphicon-briefcase"></span>  Detail Barang</h3>
<a class="btn" href="barang.php"><span class="glyphicon glyphicon-arrow-left"></span>  Kembali</a>

<?php
$id_brg=($_GET['id']);


$det=mysql_query("select * from suzuki_mobil where mobil='$id_brg'")or die(mysql_error());
while($d=mysql_fetch_array($det)){
	?>					
	<table class="table">
		<tr>
			<td>Mobil</td>
			<td><?php echo $d['0'] ?></td>
		</tr>
		<tr>
			<td>gambar</td>
			<td><?php echo $d['1'] ?></td>
		</tr>
		
		<tr>
			<td>Harga</td>
			<td>Rp.<?php echo number_format($d['2']); ?>,-</td>
		</tr>
		<tr>
			<td> Keterangan </td>
			<td> <?php echo $d['keterangan'] ?> </td>
		</tr>
		
	</table>
	<?php 
}
?>
<?php include 'footer.php'; ?>