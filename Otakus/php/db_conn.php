<?php
    $sname= "localhost";
    $unmae= "root";
    $password = "";
    $db_name = "user_database";
    $conn = mysqli_connect($sname, $unmae, $password, $db_name);
    if (!$conn) {
        die( "Connection failed!!! ".mysqli_connect_error());
    }
?>