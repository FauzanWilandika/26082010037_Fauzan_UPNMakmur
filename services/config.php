<?php
// Konfigurasi Database
$host = "localhost";
$user = "admin_iscom";
$pass = "password123";
$db   = "db_tugas_iscom";

// Membuat koneksi
$conn = new mysqli($host, $user, $pass, $db);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi database gagal: " . $conn->connect_error);
    }
    ?>
