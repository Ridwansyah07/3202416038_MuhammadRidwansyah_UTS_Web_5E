<?php
require_once __DIR__ . "/connection.php";

if (isset($_POST['nim'])) {
    $nim = $_POST['nim'];
    $sql = "DELETE FROM mahasiswa WHERE nim = '$nim'";
    
    if (mysqli_query($conn, $sql)) {
        echo "<script>
                alert('Data berhasil dihapus');
                window.location.href = 'viewdata.php';
              </script>";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
} else {
    echo "NIM tidak ditemukan!";
}
?>