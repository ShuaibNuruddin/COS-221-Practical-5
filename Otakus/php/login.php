<?php 
session_start();
include_once "db_conn.php";
if (isset($_POST['user']) && isset($_POST['password'])) {
    function validate($data){
       $data = trim($data);
       $data = stripslashes($data);
       $data = htmlspecialchars($data);
       return $data;
    }

    $user = validate($_POST['user']);
    $pass = validate($_POST['password']);
    $h_pass = hash('sha256',$pass,false);
    if (empty($user)) {
        header("Location: index.php?error=UserName is required");
        exit();
    }else if(empty($h_pass)){
        header("Location: index.php?error=Password is required");
        exit();
    }else{
        $sql = "SELECT * FROM users WHERE email='$user' AND password='$h_pass'";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) === 1){
            $row = mysqli_fetch_assoc($result);
            if ($row['email'] == $user && $row['password'] == $h_pass) {
                $_SESSION["name"]=$user;
                //echo "Logged in!";
                header("Location: ../home.html");
            }else{
                header("Location: ../index.html?error=Incorect Username or password");
                exit();
            }
        }else{
            header("Location: ../index.html?error=Incorect Username or password%");
            exit();
        }
    }
}else{
    header("Location: ../index.html");
    exit();
}
?>