<?php
    session_start(); 
    $logged_in=isset($_SESSION["name"]);
    if($logged_in){
        unset($_SESSION["user_name"]);
        session_unset();
        session_destroy();
        /**echo "Logged out <br>";
        echo '<button><a href="../index.html">Login page</a></button>';*/
        header("Location: ../index.html");
        exit();
    }
    else{
        /*echo "not logged in<br>";
        echo '<button><a href="../index.html">Login page</a></button>';*/
       header("Location: ../index.html?error=not logged in");
        exit();
    }
?>