<?php
	
	$koneksi = new mysqli("localhost","root","","db_perpustakaan");

	$filename = "transaksi_exel-(".date('d-m-Y').").xls";

	header("content-disposition: attachment; filename='$filename'");
	header("content-type: application/vdn.ms-exel");


?>

<h2>Laporan Transaksi Peminjaman Buku</h2>

<table border="1">
	<tr>
       	<th>No</th>
       	<th>Judul</th>
 		<th>NIM</th>
		<th>Nama</th>
 		<th>Tanggal Pinjam</th>
		<th>Tanggal Kembali</th>
		<th>Status</th>
		<th>Denda</th>
	</tr>

	<?php

	$no = 1;

	$sql = $koneksi -> query("select * from tb_transaksi");

 	while ($data = $sql -> fetch_assoc()) {

                                              
	?>

	<tr>

	<td><?php echo $no++; ?></td>
	<td><?php echo $data['judul'];?></td>
	<td><?php echo $data['nim'];?></td>
	<td><?php echo $data['nama'];?></td>
	<td><?php echo $data['tgl_pinjam'];?></td>
	<td><?php echo $data['tgl_kembali'];?></td>
	<td><?php echo $data['status'];?></td>
	<td><?php echo $data['denda'];?></td>
	<td>
  	</tr>


	<?php } ?>
	

</table>