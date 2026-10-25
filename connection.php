<?php
$servername = "localhost";
$username = "root";
$password = "Ridwan150725#"; 
$dbname = "db5e";             

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>