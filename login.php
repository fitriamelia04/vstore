<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VSTORE</title
</head>
<body>


<?php
if(isset($_GET['error'])){
    echo $_GET['error'];
}
?>
    <h1>VSTORE</h1>
    <form action="proses_login.php" method="post">
    <div class="user">
        Username : 
        <input type="text" name="username">
    </div>
    <div class="pass">
        Password :
        <input type="password" name="password">
    </div>
    <div class="log">
        <input type="submit" name="login" value="Login">
    </div>
    </form>
</body>
</html>