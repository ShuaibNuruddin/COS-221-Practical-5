<?php
    $hostIP = "127.0.0.1";
    $username = "root";
    $password = "password";

    $connection = new mysqli($hostIP,$username,$password);

    if ($connection->connect_error){
        die("The connection has failed: ".$connection->connect_error);
    }else{
        $connection->select_db("otakus_upload_media");
    }

?>