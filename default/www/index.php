<?php
require __DIR__ . "/config/connexionsgbd.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello world!</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        h1 {
            margin: 20px 0px;
        }
        img {
            width: 250px;
        }
        .logo2 {
            margin-top:40px;
        }
    </style>
</head>
<body>
    <h1>Hello world!</h1>
    <img src="./img/logo.svg" alt="logo php">
    <img src="./img/Nginx_logo.svg" alt="logo nginx" class="logo2">
    <img src="./img/postgres.svg" alt="logo postgres" class="logo2">
</body>
</html>
