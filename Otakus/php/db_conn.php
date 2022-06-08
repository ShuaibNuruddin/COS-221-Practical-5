<?php
    $sname= "localhost";
    $unmae= "root";
    $password = "#@T-MariaDB.2010";
    $db_name = "user_database";
    $conn = mysqli_connect($sname, $unmae, $password, $db_name);
    if (!$conn) {
        die( "Connection failed!!! ".mysqli_connect_error());
    }
?>