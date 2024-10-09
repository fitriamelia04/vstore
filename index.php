<?php
$koneksi = mysqli_connect("localhost","root","","vstore");

$query = mysqli_query($koneksi, "select * from produk");

while($data = mysqli_fetch_array($query)){
    echo $data["nama"]."<br/>";
}
?>