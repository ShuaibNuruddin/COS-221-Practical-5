<?php
   include_once "db_conn.php";
   function validate($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
    }
 function validateEmail($email){
    return filter_var($email,FILTER_VALIDATE_EMAIL);
 }

 $name = validate($_POST['Name']);
 $surname = validate($_POST['Surname']);
 $email = validate($_POST['Email']);
 $pass = validate($_POST['Password']);
 $v_pass = validate($_POST['V_password']);
 $h_pass=hash('sha256',$pass,false);

 if(!validateEmail($_POST['Email'])){
    header("Location: signup.php?error=Invalid Email Format");
 }

 if (empty($email)) {
    header("Location: index.html?error=UserName is required");
    exit();
}else if(empty($pass)){
    header("Location: index.html?error=Password is required");
    exit();
}else{
    $sql = "SELECT * FROM users WHERE email='$email'";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) ===0){
        $sql="INSERT INTO users (`name`, `surname`, `email`, `password`) VALUES ('$name', '$surname', '$email', '$h_pass')";
        if($result = mysqli_query($conn, $sql)){
            echo 'Information received: <br>';
            echo "name: $name, surname: $surname, password: $h_pass, username: $email<br>";
            echo 'go to login: <br><button><a href="../index.html">Login page</a></button>';
            //header("location: sign.html");
        }else{
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
        mysqli_close($conn);
    }
    else{
        header("location: ../index.html?error=user exist");
    }
}
?>