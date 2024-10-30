<?php
session_start();

if(!isset($_SESSION)){
    header('location:../login.php');

}
if($_SESSION['role']!="admin"){
    echo"anda tidak memiliki akses";
    die();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <h1>ini halaman admin</h1>

    <div class="container mb-5 text-center">
  <div class="row align-items-start">
    <div class="col">
    <button type="button" class="btn btn-info">Tambah Produk</button>
    </div>
    <div class="col">
    <button type="button" class="btn btn-info">Bukti Pembayaran Dana</button>
    </div>
  </div>
</div>
<div class="container text-center">
  <div class="row align-items-center">
    <div class="col">
    <button type="button" class="btn btn-info">List Pembeli</button>
    </div>
    <div class="col">
    <button type="button" class="btn btn-info">Stok Produk</button>
    </div>
  </div>
</div>

</body>
</html>