<?php include 'header.php';	?>

<h3><span class="glyphicon glyphicon-briefcase"></span>  Data Barang Terjual</h3>
<button style="margin-bottom:20px" data-toggle="modal" data-target="#myModal" class="btn btn-info col-md-2"><span class="glyphicon glyphicon-pencil"></span>  Tambah Penjualan</button>

	
<form action="" method="get">
	
	
	<br>
	<br>
	<br>

	
	<div class="col-md-2">
		<span class="input-group col-md-2"></span>
						<select  name="bulan1" class="form-control">
							<option value="">Bulan</option> 

				<?php $bulan = array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember"); ?>
				<?php for($bln=1; $bln<=12; $bln++) { ?>
					<option value="<?php echo $bln;?>">
					<?php echo $bulan[$bln-1]; ?> 
				</option>
					<?php } ?>

					</select> 

					
	</div>
	 <div class="col-md-1" align="center"> <h5> - </h5></div>
	<div class="col-md-2"> 
		<span class="input-group col-md-2"></span>
						<select name="bulan2" class="form-control" >
							<option value="">Bulan</option> <p> 

				<?php $bulan = array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember"); ?>
				<?php for($bln=1; $bln<=12; $bln++) { ?>
					<option value="<?php echo $bln;?>">
					<?php echo $bulan[$bln-1]; ?> 
				</option>
					<?php } ?> <p> 
						</select>

	</div>

	<div class="col-md-2">
		<span class="input-group col-md-2"></span>
						<select type="submit" name="tahun" class="form-control"  required> 
							<option value="">Tahun</option> 	


				<?php for($thn=1999; $thn<=2018; $thn++) { ?>
					<option value="<?php echo $thn;?>">
					<?php echo $thn; ?> 
				</option>
					<?php } ?>
						</select>

	</div>
	<div class="col-md-2">
	<input type="submit"  class="btn btn-primary" value="cari"  onchange="this.form.submit()"> 
	</select></div>

</form>
<br/>
<?php 
if(isset($_GET['tahun'])){
	$bulan1=mysql_real_escape_string($_GET['bulan1']);
	$bulan2=mysql_real_escape_string($_GET['bulan2']);
	$tahun=mysql_real_escape_string($_GET['tahun']);
	$tg="laporan_pjln.php?bulan1=$bulan1&bulan2=$bulan2&tahun=$tahun";
	?><a style="margin-bottom:10px" href="<?php echo $tg ?>" target="_blank" class="btn btn-default pull-right"><span class='glyphicon glyphicon-print'></span>  Cetak</a><?php
}else{
	$tg="laporan_pjln.php";
}
?>

<br/>
<?php 
if(isset($_GET['tahun'])){
	echo "<h4> Data Penjualan Bulan  <a style='color:blue'> ". $_GET['bulan1']." - ".$_GET['bulan2']." ". $_GET['tahun']."</a></h4>";
}
?>
<table class="table">
	<tr>
		<th>No</th>
		<th>Tanggal</th>
		<th>Mobil</th>
		<th> Warna </th>
		<th>Jumlah</th>
		<th> Harga </th> 
		<th> Total </th>
		
	</tr>
	<?php 
	if(isset($_GET['bulan1'])){
		$bulan1=mysql_real_escape_string($_GET['bulan1']);
		$bln2 = mysql_real_escape_string($_GET['bulan2']);
		$tahun = mysql_real_escape_string($_GET['tahun']);
		$brg=mysql_query("select * from pjln_suzuki LEFT JOIN suzuki_mobil USING(mobil) where month(tanggal)>='$bulan1' and month(tanggal)<='$bln2' && year(tanggal)='$tahun' order by tanggal desc");
	}else{
		$brg=mysql_query("select * from pjln_suzuki LEFT JOIN suzuki_mobil USING(mobil)order by tanggal desc");
	}
	$no=1;
	while($b=mysql_fetch_array($brg)){

		?>
		<tr>
			<td><?php echo $no++ ?> </td>
			<td><?php echo $b['tanggal'] ?> </td>
			<td><?php echo $b['mobil'] ?> </td>
			<td><?php echo $b['warna'] ?> </td>
			
			<td><?php echo $b['jumlah'] ?></td>	
			<td> <?php echo $b['harga'] ?> </td>
			<td> <?php echo $b['harga']*$b['jumlah']; ?> </td>		
				
			<td>		
				
				<a onclick="if(confirm('Apakah anda yakin ingin menghapus data ini ??')){ location.href='hapus_suzuki_laku.php?id=<?php echo $b['no']; ?>&mobil=<?php echo $b['mobil']; ?>&warna=<?php echo $b['warna'];?>&jumlah=<?php echo $b['jumlah'];?>  ' }" class="btn btn-danger">Hapus</a >
			</td>
		</tr>

		<?php 
	}
	?>
	
	
</table>

<!-- modal input -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Tambah Penjualan
				</div>
				<div class="modal-body">				
					<form action="suzuki_laku.php" method="post">
						<div class="form-group">
							<label>Tanggal</label>
							<input name="tgl" type="text" class="form-control" id="tgl" autocomplete="off" required>
						</div>	
						<div class="form-group">
							<label>Mobil</label>							
							<select  class="form-control" name="mobil">
								<?php 
								$brg=mysql_query("select * from suzuki_stok GROUP BY mobil");
								while($b=mysql_fetch_array($brg)){
									?>	
									<option value="<?php echo $b['mobil']; ?>"><?php echo $b['mobil'] ?></option>
									<?php 
								}
								?>
							</select>

						</div>	

						<div class="form-group">
							<label>Warna</label>								
							<select class="form-control" name="warna" required>
								
								<?php 
								$mobil = $_POST['mobil'];
								$brg=mysql_query("select * from suzuki_stok GROUP BY warna");
								while($b=mysql_fetch_array($brg)){
									?>	
									<option value="<?php echo $b['warna']; ?>"><?php echo $b['warna'] ?></option>
									<?php 
								}
								?>
							</select>

						</div>	



						<div class="form-group">
							<label>Jumlah</label>
							<input name="jumlah" type="text" class="form-control" placeholder="Jumlah" autocomplete="off" required>
						</div>	
													

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
						<input type="reset" class="btn btn-danger" value="Reset">												
						<input type="submit" class="btn btn-primary" value="Simpan">
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#tgl").datepicker({dateFormat : 'yy/mm/dd'});							
		});
	</script>

	<?php include 'footer.php'; ?>