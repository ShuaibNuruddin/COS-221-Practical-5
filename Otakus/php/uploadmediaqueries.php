<?php
    
    //echo $hostIP;
    session_start();
    include_once "uploadmediaconnection.php";

    $file_tournament_name = $_POST["tournamentf"];
    $file_tournament = $_POST["tournamentf"];
    $file_description_tournament = $_POST["tournamentd"];

    /*echo $file_description_tournament;
    echo gettype($file_tournament);
    echo $file_tournament["value"];
    echo $file_tournament["files"];
    echo $file_tournament;
    echo $file_description_tournament;*/

    $file_event_name = $_POST["eventf"];
    $file_event = $_POST["eventf"];
    $file_description_event = $_POST["eventd"];

    $file_player_name = $_POST["playerf"];
    $file_player = $_POST["playerf"];
    $file_description_player = $_POST["playerd"];

    $file_team_name = $_POST["teamf"];
    $file_team = $_POST["teamf"];
    $file_description_team = $_POST["teamd"];

    //echo $file_description_tournament;

    $sql_query_tournament = "INSERT INTO media_tournament VALUES($file_tournament_name,$file_tournament,$file_description_tournament)";
    //$sql_query_tournament = "INSERT INTO media_tournament (file_name, file_description) VALUES($file_tournament_name,$file_description_tournament)";
    if ($connection->query($sql_query_tournament)===true){
        echo "Tournament Media Uploaded Successfully.\n";
    }else{
        echo $connection->error;
    }

    $sql_query_team = "INSERT INTO media_team VALUES($file_team_name,$file_team,$file_description_team)";
    if ($connection->query($sql_query_team)===true){
        echo "Team Media Uploaded Successfully.\n";
    }else{
        echo $connection->error;
    }
    $sql_query_player = "INSERT INTO media_player VALUES($file_player_name,$file_player,$file_description_player)";
    if ($connection->query($sql_query_player)===true){
        echo "Player Media Uploaded Successfully.\n";
    }else{
        echo $connection->error;
    }
    $sql_query_event = "INSERT INTO media_tournament VALUES($file_event_name,$file_event,$file_description_event)";
    if ($connection->query($sql_query_event)===true){
        echo "Event Media Uploaded Successfully.\n";
    }else{
        echo $connection->error;
    }

    //$sql_query = "INSERT INTO media_team VALUES($file_name,$file,$file_description)";
    $connection->close();
?>