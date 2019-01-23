<?php include 'header.php'; ?>

<h3><span class="glyphicon glyphicon-briefcase"></span>  Data Stok</h3>
<button style="margin-bottom:20px" data-toggle="modal" data-target="#myModal" class="btn btn-info col-md-2"><span class="glyphicon glyphicon-plus"></span>Tambah Barang</button>
<br/>
<br/>
<br/>
<?php 
$periksa=mysql_query("select * from suzuki_stok where stok <=3");
while($q=mysql_fetch_array($periksa)){	
	if($q['stok']<=3){	
		?>	
		<script>
			$(document).ready(function(){
				$('#pesan_sedia').css("color","red");
				$('#pesan_sedia').append("<span class='glyphicon glyphicon-asterisk'></span>");
			});
		</script>
		<?php
		echo "<div style='padding:5px' class='alert alert-warning'><span class='glyphicon glyphicon-info-sign'></span> Stok Mobil <a style='color:red'>". $q['mobil']." ".$q['warna']."</a> kurang dari 3 . silahkan pesan lagi !!</div>";	
	}
}
?>


<?php 
$per_hal=25;
$jumlah_record=mysql_query("SELECT COUNT(*) from suzuki_stok");
$jum=mysql_result($jumlah_record, 0);
$halaman=ceil($jum / $per_hal);
$page = (isset($_GET['page'])) ? (int)$_GET['page'] : 1;
$start = ($page - 1) * $per_hal;
?>
<div class="col-md-12">
	<table class="col-md-2">
		<tr>
			<td>Jumlah Record</td>		
			<td><?php echo $jum; ?></td>
		</tr>
		<tr>
			<td>Jumlah Halaman</td>	
			<td><?php echo $halaman; ?></td>
		</tr>
	</table>

<br/>
<br/>
<br/>
	<form action="" method="get">
	<div class="col-md-2">
		<span class="input-group col-md-3"></span>
						<select  type="submit" name="mobil" class="form-control" onchange="this.form.submit()">
							<option value="">-Jenis Mobil-</option> 
			<?php 
			$pil=mysql_query("select mobil from suzuki_mobil order by mobil ASC");
			while($p=mysql_fetch_array($pil)){
				?>
				<option><?php echo $p['mobil'] ?></option>
				<?php
			}
			?>			
							
					</select> 

					
	</div>
	<br/>
	<br/>	

</form>
<?php
if(isset($_GET['mobil'])){
	$mobil = mysql_real_escape_string($_GET['mobil']);	
	$tg = "lap_stok.php?mobil=$mobil";
	?><a style="margin-bottom:10px" href="<?php echo $tg ?>" target="_blank" class="btn btn-default pull-right"><span class='glyphicon glyphicon-print'></span>  
Cetak</a>
<?php }	?>
</div>

<br/>
<table class="table table-hover">
	<tr>
		<th class="col-md-1">No</th>
		<th class="col-md-1">Mobil</th>
		<th class="col-md-1">Warna</th>
		<th class="col-md-4">Stok</th>
	</tr>
	<?php 
	
	if(isset($_GET['mobil'])){
		$mobil=mysql_real_escape_string($_GET['mobil']);
		$brg=mysql_query("select * from suzuki_stok where mobil Like '$mobil'");
	}else{
		$brg=mysql_query("select * from suzuki_stok ORDER BY mobil ASC limit $start, $per_hal");
	}
	$no=1;
	while($b=mysql_fetch_array($brg)){

		?>
		<tr>
			<td><?php echo $no++ ?></td>
			<td><?php echo $b['mobil'] ?></td>
			<td><?php echo $b['warna'] ?></td>
			<td><?php echo $b['stok']?></td>
			
			<td>
				<a href="det_stok.php?id=<?php echo $b['0']; ?>" class="btn btn-info">Detail</a>
				<a href="edit_stok.php?id=<?php echo $b['0']; ?>" class="btn btn-warning">Edit</a>
				<a onclick="if(confirm('Apakah anda yakin ingin menghapus data ini ??')){ location.href='hapus_stok.php?id=<?php echo $b['0']; ?>' }" class="btn btn-danger">Hapus</a>
			</td>
		</tr>		
		<?php 
	}
	?>
	
</table>
<ul class="pagination">			
			<?php 
			for($x=1;$x<=$halaman;$x++){
				?>
				<li><a href="?page=<?php echo $x ?>"><?php echo $x ?></a></li>
				<?php
			}
			?>						
		</ul>
<!-- modal input -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Tambah Barang Baru</h4>
			</div>
			<div class="modal-body">
				<form action="tmb_stok_act.php" method="post">
					<div class="form-group">
						<label>Mobil</label>
						<select class="form-control" name="mobil">
						<?php
						$mbl = mysql_query("SELECT * FROM suzuki_mobil");
						while($b = mysql_fetch_array($mbl)){
						?>
						<option value = "<?php echo $b['mobil']; ?>"> <?php echo $b['mobil'] ?></option>
						<?php } ?>
						</select>

					</div>
					<div class="form-group">
						<label>Warna</label>
						<select class="form-control" name="warna">
						<?php
						$mbl = mysql_query("SELECT * FROM suzuki_stok GROUP BY warna");
						while($b = mysql_fetch_array($mbl)){
						?>
						<option value = "<?php echo $b['warna']; ?>"> <?php echo $b['warna'] ?></option>
						<?php } ?>
						</select>
					</div>
					<div class="form-group">
						<label>Stok</label>
						<input name="stok" autocomplete="off" type="text" class="form-control" placeholder="Stok Mobil ...">
					</div>
					
											

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
					<input type="submit" class="btn btn-primary" value="Simpan">
				</div>
			</form>
		</div>
	</div>
</div>



<?php 
include 'footer.php';

?>