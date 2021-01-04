<?php

$server = "localhost";
$username = "root";
$password = "";
$database = "kategorimakanan";
$con = mysqli_connect($server, $username, $password) or die("<h1>Koneksi Mysqli Error : </h1>" . mysqli_connect_error());
mysqli_select_db($con, $database) or die ("<h1>Koneksi Kedatabse Error : </h1>". mysqli_error($con));

@$sistem = $_GET['sistem'];

switch ($sistem) {

	case "lihat":

	$query_tampil_kategori = mysqli_query($con,"SELECT * FROM kategori") or die (mysqli_error($con));
	$data_array = array();

	while ($data = mysqli_fetch_assoc($query_tampil_kategori)) {
		$data_array[]=$data;
	}
	echo json_encode($data_array);

	break;

	case "tambah_data":
	@$id = $_POST['id'];
	@$nama_kategori = $_POST['nama_kategori'];
	@$tipe_kategori = $_POST['tipe_kategori'];
	@$deskripsi = $_POST['deskripsi'];

	$query_tambah_data = mysqli_query($con, "INSERT INTO kategori (id, nama_kategori, tipe_kategori, deskripsi) VALUES('$id', '$nama_kategori', '$tipe_kategori', '$deskripsi')");

	if ($query_tambah_data) {
		echo "Data Berhasil Disimpan YEAAYY";
	}
	else {
		echo "Maaf Data yang ditambahkan ke dalam database ERROR" . mysqli_error($con);
	}

	break;

	case "get_biodata_by_id":
	@$id =(int)$_GET['id'];
	$query_tampil_kategori = mysqli_query($con, "SELECT * FROM kategori WHERE id='$id'") or die (mysqli_error($con));
	$data_array = array();
	$data_array = mysqli_fetch_assoc($query_tampil_kategori);
	echo "[" .json_encode ($data_array) . "]";
	break;

	case "edit_data";
	@$nama_kategori = $_GET['nama_kategori'];
	@$tipe_kategori = $_GET['tipe_kategori'];
	@$deskripsi = $_GET['deskripsi'];
	@$id = $_GET['id'];

	$query_update_kategori = mysqli_query($con, "UPDATE kategori SET nama_kategori='$nama_kategori', tipe_kategori='$tipe_kategori', deskripsi='$deskripsi' WHERE id='$id'"); 

	if ($query_update_kategori) {
			echo " Update Data Berhasil YEAAAAYY";
	}
	else {
		echo mysqli_error($con);
	}
	break;

	case "hapus":
	@$id = $_DELETE['id'];
	$query_delete_kategori = mysqli_query($con, "DELETE FROM kategori WHERE id='$id'");
	if ($query_delete_kategori) {
		echo "Data Berhasil Dihapus :((";
	}
	else {
		echo mysqli_error($con);
	}
	break;

	default:
	break;
}
?>
