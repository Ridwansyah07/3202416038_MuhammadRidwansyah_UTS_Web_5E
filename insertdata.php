<?php
require_once __DIR__ . '/connection.php';

$nim = $_POST['nim'];
$nama_lengkap = $_POST['nama_lengkap'];
$nilai_akhir = $_POST['nilai_akhir'];

if (0.00 <= $nilai_akhir && $nilai_akhir <= 34.50) {
    $nilai_huruf = 'E';
    $predikat = 'Tidak Lulus';
} elseif ($nilai_akhir > 34.50 && $nilai_akhir <= 50.50) {
    $nilai_huruf = 'D';
    $predikat = "Kurang Memuaskan";
} elseif ($nilai_akhir > 50.50 && $nilai_akhir <= 60.50) {
    $nilai_huruf = 'C';
    $predikat = 'Cukup Memuaskan';
} elseif ($nilai_akhir > 60.50 && $nilai_akhir <= 80.50) {
    $nilai_huruf = 'B';
    $predikat = 'Memuaskan';
} elseif ($nilai_akhir > 80.50 && $nilai_akhir <= 100.00) {
    $nilai_huruf = 'A';
    $predikat = 'Sangat Memuaskan';
} 

// upload foto
$target_dir = "img/";
$nama_foto = "";

if (isset($_FILES["foto"]) && $_FILES["foto"]["error"] == 0) {
    $file_name = basename($_FILES["foto"]["name"]);
    $imageFileType = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));

    $new_filename = $nim . "_" . time() . "." . $imageFileType;
    $target_file = $target_dir . $new_filename;

    $uploadOk = 1;

    // autentikasi
    $check = getimagesize($_FILES["foto"]["tmp_name"]);
    if ($check !== false) {
        $uploadOk = 1;
    } else {
        echo"<script>alert('File Bukan Berupa Gambar.'); 
        window.history.back();
        </script>";
        exit;
    }
    
    //cek ukuran file
    if ($_FILES["foto"]["size"] > 2000000) {
        echo "<script>alert('Ukuran File Terlalu Besar. Maksimal 2MB.'); 
        window.history.back();
        </script>";
        exit;
    }

    //whitelist format
    if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg") {
        echo "<script>alert('Harap Unggah File Dengan Ekstensi JPG, JPEG, dan PNG');
        window.history.back();
        </script>";
        exit;
    }

    //pindah file
    if ($uploadOk == 1) {
        if (move_uploaded_file($_FILES["foto"]["tmp_name"], $target_file)) {
            $nama_foto = $new_filename;
        } else {
            echo "<script>alert('Terjadi Kesalahan saat Mengunggah Foto..');
            window.history.back();
            </script>";
            exit;
        }
    }

}

$sql = "INSERT INTO mahasiswa (nim, nama_lengkap, nilai_akhir, nilai_huruf, predikat, foto)
        VALUES ('$nim', '$nama_lengkap', $nilai_akhir, '$nilai_huruf', '$predikat', '$nama_foto')";

if (mysqli_query($conn, $sql)) {
    echo "<script>
            alert('New record created successfully');
            window.location.href = 'viewdata.php';
          </script>";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

// mysqli_close($conn);
header ('Location: viewdata.php');
?>