<?php
require __DIR__ . "/filedotenv.php";
load_file_env(__DIR__);

$sgbd_type = "pgsql";
$sgbd_server = $_ENV['NAME_PROJECT'] . "_postgres";
$sgbd_port = "0";
$sgbd_dbname = $_ENV['SGBD_DATABASE'];
$sgbd_user = "root";
$sgbd_pass = $_ENV['SGBD_PASSWORD'];
$sgbd_prefix = "";
