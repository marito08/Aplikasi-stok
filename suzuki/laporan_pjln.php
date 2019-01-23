<?php

include 'config.php';
require('../assets/pdf/fpdf.php');

$pdf = new FPDF("L","cm","A4");

$pdf->SetMargins(2,1,1);
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Times','B',11);
$pdf->Image('../logo/nscb123.png',1,1,2,2);
$pdf->SetX(4);            
$pdf->MultiCell(19.5,0.5,'PT Nusa Sarana Citra Bakti',0,'L');
$pdf->SetX(4);
$pdf->MultiCell(19.5,0.5,'Telpon : 0711-1112200',0,'L');    
$pdf->SetFont('Arial','B',10);
$pdf->SetX(4);
$pdf->MultiCell(19.5,0.5,'JL. Aiptu K.S Tubun No.81A',0,'L');
$pdf->SetX(4);
$pdf->MultiCell(19.5,0.5,'website : www.thamringroup.com email : thamringroup@gmail.com',0,'L');
$pdf->Line(1,3.1,28.5,3.1);
$pdf->SetLineWidth(0.1);      
$pdf->Line(1,3.2,28.5,3.2);   
$pdf->SetLineWidth(0);
$pdf->ln(1);
$pdf->SetFont('Arial','B',14);
$pdf->Cell(0,0.7,'Laporan Data Penjualan Mobil Suzuki',0,0,'C');
$pdf->ln(1);
$pdf->SetFont('Arial','B',10);
$pdf->Cell(5,0.7,"Di cetak pada : ".date("D-d/m/Y"),0,0,'C');
$pdf->ln(1);
$pdf->Cell(4,0.8,"Laporan Penjualan pada bulan:" .$_GET['bulan1'] ,0,0,'C');
$pdf->Cell(2,0.8,"  -  " .$_GET['bulan2'] ,0,0,'C');
$pdf->Cell(0.1,0.8, "" .$_GET['tahun'] ,0,0,'C');
$pdf->ln(1);
$pdf->Cell(1, 0.8, 'No', 1, 0, 'C');
$pdf->Cell(3, 0.8, 'Tanggal', 1, 0, 'C');
$pdf->Cell(6, 0.8, 'Mobil', 1, 0, 'C');
$pdf->Cell(3, 0.8, 'Warna', 1, 0, 'C');
$pdf->Cell(3, 0.8, 'Jumlah', 1, 0, 'C');
$pdf->Cell(4, 0.8, 'Harga', 1, 0, 'C');
$pdf->Cell(4, 0.8, 'Total', 1, 1, 'C');



$no=1;
$bulan1=$_GET['bulan1'];
$bulan2 = $_GET['bulan2'];
$tahun = $_GET['tahun'];
$query=mysql_query("select * from pjln_suzuki LEFT JOIN suzuki_mobil USING(mobil) where month(tanggal)>= $bulan1 && month(tanggal)<=$bulan2 && year(tanggal)=$tahun" );
while($lihat=mysql_fetch_array($query)){
	$pdf->Cell(1, 0.8, $no , 1, 0, 'C');
	$pdf->Cell(3, 0.8, $lihat['tanggal'],1, 0, 'C');
	$pdf->Cell(6, 0.8, $lihat['mobil'],1, 0, 'C');
	$pdf->Cell(3, 0.8, $lihat['warna'], 1, 0,'C');
	$pdf->Cell(3, 0.8, $lihat['jumlah'], 1, 0,'C');
	$pdf->Cell(4, 0.8, "Rp. ".number_format($lihat['harga'])." ,-", 1, 0,'C');
	$pdf->Cell(4, 0.8, "Rp. ".number_format($lihat['harga']*$lihat['jumlah'])." ,-", 1, 1,'C');
	

	
	$no++;
}
$q=mysql_query("select sum(jumlah*harga)  as total from pjln_suzuki LEFT JOIN suzuki_mobil USING(mobil) where month(tanggal)>= $bulan1 && month(tanggal)<=$bulan2 && year(tanggal)=$tahun" );
while($total=mysql_fetch_array($q)){
$pdf->Cell(20, 0.8, "Total", 1, 0,'C');		
	$pdf->Cell(4, 0.8, "Rp. ".number_format($total['total'])." ,-", 1, 0,'C');	
}

	
	



$pdf->Output("laporan_buku.pdf","I");

?>

