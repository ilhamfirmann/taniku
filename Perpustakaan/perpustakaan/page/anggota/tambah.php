<script type="text/javascript">
    function validasi(form){
        if (form.nim.value=="") {
            alert("NIM tidak boleh kosong");
            form.nim.focus();
            return(false);
        } if (form.nama.value=="") {
            alert("Nama tidak boleh kosong");
            form.nama.focus();
            return(false);
        }if (form.tempat_lahir.value=="") {
            alert("Tempat Lahir tidak boleh kosong");
            form.tempat_lahir.focus();
            return(false);
        }if (form.tgl.value=="") {
            alert("Tanggal tidak boleh kosong");
            form.tgl.focus();
            return(false);
        }if (form.jk.value=="") {
            alert("Jenis kelamin tidak boleh kosong");
            form.jk.focus();
            return(false);
        }
        return(true);
    }



</script>


 <div class="panel panel-default">
 <div class="panel-heading">
 	Tambah Data
 </div>	
 <div class="panel-body">
                            <div class="row">
                                <div class="col-md-10">
                                    <form method="POST" onsubmit="return validasi(this)">
                                        <div class="form-group">
                                            <label>NIS</label>
                                            <input class="form-control" name="nim" />
                                           
                                        </div>
                                        <div class="form-group">
                                        <label>Nama</label>
                                            <input class="form-control" name="nama" />
                                           
                                        </div>
                                        <div class="form-group">
                                        <label>Tempat Lahir</label>
                                            <input class="form-control" name="tempat_lahir" />
                                        </div>  
                                        <div class="form-group">
                                        <label>Tanggal Lahir</label>
                                            <input class="form-control" type="date" name="tgl_lahir" />
                                        </div>
                                        <div class="form-group">
                                            <label>Jenis Kelamin : </label></br>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" value="L" name="jk" /> Laki-laki
                                            </label>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" value="P" name="jk" /> Perempuan
                                            </label>
                                        </div>

                                        <div class="form-group">
                                            <label>Kelas</label>
                                            <input class="form-control" name="prodi" />
                                        </div>
                                       
                                        <div>
                                        		<input type="submit" name="simpan" value="simpan" class="btn btn-primary">
                                        </div>

                                </div>

                            </form>
                             </div> 
</div>
</div>
</div>


<?php
	
	$nim= $_POST["nim"];
	$nama= $_POST["nama"];
	$tempat_lahir= $_POST["tempat_lahir"];
	$tgl_lahir= $_POST["tgl_lahir"];
	$jk= $_POST["jk"];
	$prodi= $_POST["prodi"];
	

	$simpan= $_POST["simpan"];

	if ($simpan) {
		$sql = $koneksi -> query("insert into tb_anggota (nim, nama, tempat_lahir, tgl_lahir, jk, prodi) 
			values('$nim','$nama','$tempat_lahir','$tgl_lahir','$jk','$prodi')");

		if ($sql){
			?>
				<script type="text/javascript">
					alert ("Data Berhasil Disimpan")
					window.location.href="?page=anggota";
					
				</script>

			<?php
		}
	}

?>