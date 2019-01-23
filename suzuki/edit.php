<?php 
include 'header.php';
?>
<h3><span class="glyphicon glyphicon-briefcase"></span>  Edit Barang</h3>
<a class="btn" href="barang.php"><span class="glyphicon glyphicon-arrow-left"></span>  Kembali</a>
<?php
$id_brg=mysql_real_escape_string($_GET['id']);
$det=mysql_query("select * from suzuki_mobil where mobil='$id_brg'")or die(mysql_error());
while($d=mysql_fetch_array($det)){
?>					
	<form action="update.php" method="post">
		<table class="table">
			<tr>
				<td></td>
				<td><input type="hidden" name="id" autocomplete="off" value="<?php echo $d['mobil'] ?>"></td>
			</tr>
			<tr>
				<td>Mobil</td>
				<td><input type="text" class="form-control" name="mobil" value="<?php echo $d['mobil'] ?>" autocomplete="off"></td>
			</tr>
			<tr>
				<td>gambar</td>
				<td><input type="file" class="form-control" name="gambar" autocomplete="off" value = "" ></td>
			</tr>
			<tr>
				<td>Harga</td>
				<td><input type="text" class="form-control" name="harga" autocomplete="off" value="<?php echo $d['harga'] ?>"></td>
			</tr>
			<tr>
						<td>keterangan</td>
					<td><textarea name="keterangan"  cols="4" rows="40" autocomplete="off" class="form-control" placeholder="keterangan ..."><?php echo $d['keterangan'] ?></textarea>
					
			</td>
			<tr>
				<td></td>
				<td><input type="submit" class="btn btn-info" value="Simpan"></td>
			</tr>
		</table>
	</form>
	<?php 
}
?>
<?php include 'footer.php'; ?>