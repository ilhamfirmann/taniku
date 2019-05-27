<?php 
	
	$id = $_GET['id'];
	$judul = $_GET['judul'];


	$denda = 1000;

	$tgl_dateline2 = $data['tgl_kembali'];
	$tgl_kembali = date('Y-m-d');
	$lambat = terlambat($tgl_dateline2, $tgl_kembali);
	$denda1 = $lambat*$denda;

	if ($lambat>0) {
        $denda1;
    }else{
    	$lambat . "Hari";
  	}
	
	$sql = $koneksi->query("update tb_transaksi set status='kembali' where id='$id'");
	$sql = $koneksi->query("update tb_transaksi set terlambat='0' where id='$id'");
	$sql = $koneksi->query("update tb_transaksi set denda='Rp.0' where terlambat='0'");
	$sql = $koneksi->query("update tb_buku set jumlah_buku = (jumlah_buku+1) where judul = '$judul'");

	?>
		<script type="text/javascript">
			alert("Proses Mengembalikan Buku Berhasil");
			window.location.href="?page=transaksi";
		</script>
	<?php
?>