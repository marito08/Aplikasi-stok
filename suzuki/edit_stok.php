<?php 
include 'header.php';
?>
<h3><span class="glyphicon glyphicon-briefcase"></span>  Edit Barang</h3>
<a class="btn" href="stok_mobil.php"><span class="glyphicon glyphicon-arrow-left"></span>  Kembali</a>
<?php
$id_brg=mysql_real_escape_string($_GET['id']);
$det=mysql_query("select * from suzuki_stok where no='$id_brg'")or die(mysql_error());
while($d=mysql_fetch_array($det)){
?>					
	<form action="update_stok.php" method="post">
		<table class="table">
			<tr>
				<td></td>
				<td><input type="hidden" name="id" autocomplte="off" value="<?php echo $d['no'] ?>"></td>
			</tr>
			
			<div class="form-group">
							<label>Jenis</label>								
							<select class="form-control" name="mobil"><option> <?php echo $d['mobil'] ?> </option>
								<?php 
								$brg=mysql_query("select * from suzuki_mobil GROUP BY mobil");
								while($b=mysql_fetch_array($brg)){
									?>	
									<option value="<?php echo $b['mobil']; ?>"><?php echo $b['mobil'] ?></option>
									<?php 
								}
								?>
							</select>

						</div>	

						<div class="form-group">
							<label>Tipe</label>								
							<select class="form-control" name="warna"><option><?php echo $d['warna'] ?></option>
								<?php 
								$brg=mysql_query("select * from suzuki_stok GROUP BY warna");
								while($b=mysql_fetch_array($brg)){
									?>	
									<option value="<?php echo $b['warna']; ?>"><?php echo $b['warna'] ?></option>
									<?php 
								}
								?>
							</select>

						</div>	
			<tr>
				<td>Stok<tr>
				<td><input type="text" class="form-control" name="stok" value="<?php echo $d['stok'] ?>" autocomplete="off"></td>
			</tr>
			
			<tr>
				
				<td><input type="submit" class="btn btn-info" value="Simpan"></td>
			</tr>
		</table>
	</form>
	<?php 
}
?>
<?php include 'footer.php'; ?>